// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IpDetailsDtoImpl _$$IpDetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$IpDetailsDtoImpl(
      country: json['country'] as String?,
      regionName: json['regionName'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      timezone: json['timezone'] as String?,
      isp: json['isp'] as String?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$IpDetailsDtoImplToJson(_$IpDetailsDtoImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'regionName': instance.regionName,
      'city': instance.city,
      'zip': instance.zip,
      'timezone': instance.timezone,
      'isp': instance.isp,
      'query': instance.query,
    };
