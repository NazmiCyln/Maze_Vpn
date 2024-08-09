import 'package:csv/csv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:maze_vpn/constants/api_endpoints.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../services/locale/locale_resources_service.dart';
import '../../../../services/network/network_service.dart';
import '../../domain/models/ip_details.dart';
import '../../domain/models/vpn.dart';
import '../../domain/repositories/home_repository.dart';
import '../DTOs/ip_details/ip_details_dto.dart';
import '../DTOs/vpn/vpn_dto.dart';

@LazySingleton(as: HomeRepository)
final class HomeRepositoryImpl implements HomeRepository {
  final NetworkService networkService;
  final LocaleResourcesService localeResourcesService;
  final Isar isar;

  HomeRepositoryImpl(
    this.networkService,
    this.localeResourcesService,
    this.isar,
  );

  @override
  Future<Either<Failure, List<Vpn>>> getVpnServers() async {
    try {
      final List<Vpn> vpnList = [];

      final isarVpn = await isar.vpns.where().findAll();
      final lastVpnCacheTime = await localeResourcesService.getLastVpnCacheTime();
      final now = DateTime.now();

      if (isarVpn.isNotEmpty &&
          lastVpnCacheTime.fold(() => false, (a) => now.difference(DateTime.parse(a)).inHours < 24)) {
        isarVpn.shuffle();

        return right(isarVpn);
      }

      final result = await networkService.get(Endpoints.vpnServers);

      final csvString = result.fold(
        (l) => "",
        (r) => r.data.toString().split("#")[1].replaceAll("*", ""),
      );

      if (csvString.isEmpty) {
        return left(const Failure.unknownError("Failed to get VPN servers"));
      } else {
        final csvList = const CsvToListConverter().convert(csvString);

        final header = csvList[0];

        for (int i = 1; i < csvList.length - 1; ++i) {
          final Map<String, dynamic> tempJson = {};

          for (int j = 0; j < header.length; ++j) {
            tempJson.addAll({header[j].toString(): csvList[i][j]});
          }
          vpnList.add(VpnDto.fromJson(tempJson).toDomain());
        }

        vpnList.shuffle();

        isar.writeTxnSync(() => isar.vpns.where().deleteAllSync());
        isar.writeTxnSync(() => isar.vpns.putAllSync(vpnList));
        await localeResourcesService.setLastVpnCacheTime(now.toString());

        return right(vpnList);
      }
    } on Exception catch (e) {
      return left(Failure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, IpDetails>> getIpDetails() async {
    try {
      final result = await networkService.get(Endpoints.getIpDetails);

      return result.fold(
        left,
        (r) => optionOf(r.data as Map<String, dynamic>).fold(
          () => left(const Failure.unknownError("Failed to get IP details")),
          (t) => right(IpDetailsDto.fromJson(t).toDomain()),
        ),
      );
    } on Exception catch (e) {
      return left(Failure.unknownError(e.toString()));
    }
  }
}
