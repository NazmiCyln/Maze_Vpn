import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../models/ip_details.dart';
import '../models/vpn.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, List<Vpn>>> getVpnServers();

  Future<Either<Failure, IpDetails>> getIpDetails();
}
