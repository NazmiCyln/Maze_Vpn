import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/vpn.dart';

part 'vpn_dto.freezed.dart';
part 'vpn_dto.g.dart';

@freezed
class VpnDto with _$VpnDto {
  const factory VpnDto({
    @JsonKey(name: "HostName") String? hostname,
    @JsonKey(name: "IP") String? ip,
    @JsonKey(name: "Ping") dynamic ping,
    @JsonKey(name: "Speed") int? speed,
    @JsonKey(name: "CountryLong") String? countryLong,
    @JsonKey(name: "CountryShort") String? countryShort,
    @JsonKey(name: "NumVpnSessions") int? numVpnSessions,
    @JsonKey(name: "OpenVPN_ConfigData_Base64") String? openVPNConfigDataBase64,
  }) = _VpnDto;

  factory VpnDto.fromJson(Map<String, dynamic> json) => _$VpnDtoFromJson(json);

  const VpnDto._();

  Vpn toDomain() {
    return Vpn(
      hostname: hostname ?? '',
      ip: ip ?? '',
      ping: ping.toString(),
      speed: speed ?? 0,
      countryLong: countryLong ?? '',
      countryShort: countryShort ?? '',
      numVpnSessions: numVpnSessions ?? 0,
      openVPNConfigDataBase64: openVPNConfigDataBase64 ?? '',
    );
  }
}
