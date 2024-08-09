import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/ip_details.dart';

part 'ip_details_dto.freezed.dart';
part 'ip_details_dto.g.dart';

@freezed
class IpDetailsDto with _$IpDetailsDto {
  const factory IpDetailsDto({
    String? country,
    String? regionName,
    String? city,
    String? zip,
    String? timezone,
    String? isp,
    String? query,
  }) = _IpDetailsDto;

  factory IpDetailsDto.fromJson(Map<String, dynamic> json) => _$IpDetailsDtoFromJson(json);

  const IpDetailsDto._();

  IpDetails toDomain() {
    return IpDetails(
      country: country ?? '',
      regionName: regionName ?? '',
      city: city ?? '',
      zip: zip ?? '',
      timezone: timezone ?? '',
      isp: isp ?? '',
      query: query ?? '',
    );
  }
}
