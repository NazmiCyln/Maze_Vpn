// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VpnDtoImpl _$$VpnDtoImplFromJson(Map<String, dynamic> json) => _$VpnDtoImpl(
      hostname: json['HostName'] as String?,
      ip: json['IP'] as String?,
      ping: json['Ping'],
      speed: (json['Speed'] as num?)?.toInt(),
      countryLong: json['CountryLong'] as String?,
      countryShort: json['CountryShort'] as String?,
      numVpnSessions: (json['NumVpnSessions'] as num?)?.toInt(),
      openVPNConfigDataBase64: json['OpenVPN_ConfigData_Base64'] as String?,
    );

Map<String, dynamic> _$$VpnDtoImplToJson(_$VpnDtoImpl instance) =>
    <String, dynamic>{
      'HostName': instance.hostname,
      'IP': instance.ip,
      'Ping': instance.ping,
      'Speed': instance.speed,
      'CountryLong': instance.countryLong,
      'CountryShort': instance.countryShort,
      'NumVpnSessions': instance.numVpnSessions,
      'OpenVPN_ConfigData_Base64': instance.openVPNConfigDataBase64,
    };
