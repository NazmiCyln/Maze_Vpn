// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VpnStatusDtoImpl _$$VpnStatusDtoImplFromJson(Map<String, dynamic> json) =>
    _$VpnStatusDtoImpl(
      duration: json['duration'] as String?,
      lastPacketReceive: json['last_packet_receive'] as String?,
      byteIn: json['byte_in'] as String?,
      byteOut: json['byte_out'] as String?,
    );

Map<String, dynamic> _$$VpnStatusDtoImplToJson(_$VpnStatusDtoImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'last_packet_receive': instance.lastPacketReceive,
      'byte_in': instance.byteIn,
      'byte_out': instance.byteOut,
    };
