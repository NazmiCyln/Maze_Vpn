import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/vpn_status.dart';

part 'vpn_status_dto.freezed.dart';
part 'vpn_status_dto.g.dart';

@freezed
class VpnStatusDto with _$VpnStatusDto {
  const factory VpnStatusDto({
    String? duration,
    @JsonKey(name: "last_packet_receive") String? lastPacketReceive,
    @JsonKey(name: "byte_in") String? byteIn,
    @JsonKey(name: "byte_out") String? byteOut,
  }) = _VpnStatusDto;

  factory VpnStatusDto.fromJson(Map<String, dynamic> json) => _$VpnStatusDtoFromJson(json);

  const VpnStatusDto._();

  VpnStatus toDomain() {
    return VpnStatus(
      duration: duration ?? '',
      lastPacketReceive: lastPacketReceive ?? '',
      byteIn: byteIn ?? '',
      byteOut: byteOut ?? '',
    );
  }
}
