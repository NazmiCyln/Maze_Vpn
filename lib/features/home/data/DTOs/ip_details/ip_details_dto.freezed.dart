// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ip_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IpDetailsDto _$IpDetailsDtoFromJson(Map<String, dynamic> json) {
  return _IpDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$IpDetailsDto {
  String? get country => throw _privateConstructorUsedError;
  String? get regionName => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get isp => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpDetailsDtoCopyWith<IpDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpDetailsDtoCopyWith<$Res> {
  factory $IpDetailsDtoCopyWith(
          IpDetailsDto value, $Res Function(IpDetailsDto) then) =
      _$IpDetailsDtoCopyWithImpl<$Res, IpDetailsDto>;
  @useResult
  $Res call(
      {String? country,
      String? regionName,
      String? city,
      String? zip,
      String? timezone,
      String? isp,
      String? query});
}

/// @nodoc
class _$IpDetailsDtoCopyWithImpl<$Res, $Val extends IpDetailsDto>
    implements $IpDetailsDtoCopyWith<$Res> {
  _$IpDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? regionName = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? timezone = freezed,
    Object? isp = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      isp: freezed == isp
          ? _value.isp
          : isp // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IpDetailsDtoImplCopyWith<$Res>
    implements $IpDetailsDtoCopyWith<$Res> {
  factory _$$IpDetailsDtoImplCopyWith(
          _$IpDetailsDtoImpl value, $Res Function(_$IpDetailsDtoImpl) then) =
      __$$IpDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? regionName,
      String? city,
      String? zip,
      String? timezone,
      String? isp,
      String? query});
}

/// @nodoc
class __$$IpDetailsDtoImplCopyWithImpl<$Res>
    extends _$IpDetailsDtoCopyWithImpl<$Res, _$IpDetailsDtoImpl>
    implements _$$IpDetailsDtoImplCopyWith<$Res> {
  __$$IpDetailsDtoImplCopyWithImpl(
      _$IpDetailsDtoImpl _value, $Res Function(_$IpDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? regionName = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? timezone = freezed,
    Object? isp = freezed,
    Object? query = freezed,
  }) {
    return _then(_$IpDetailsDtoImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      isp: freezed == isp
          ? _value.isp
          : isp // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IpDetailsDtoImpl extends _IpDetailsDto {
  const _$IpDetailsDtoImpl(
      {this.country,
      this.regionName,
      this.city,
      this.zip,
      this.timezone,
      this.isp,
      this.query})
      : super._();

  factory _$IpDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IpDetailsDtoImplFromJson(json);

  @override
  final String? country;
  @override
  final String? regionName;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final String? timezone;
  @override
  final String? isp;
  @override
  final String? query;

  @override
  String toString() {
    return 'IpDetailsDto(country: $country, regionName: $regionName, city: $city, zip: $zip, timezone: $timezone, isp: $isp, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpDetailsDtoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.isp, isp) || other.isp == isp) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, country, regionName, city, zip, timezone, isp, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpDetailsDtoImplCopyWith<_$IpDetailsDtoImpl> get copyWith =>
      __$$IpDetailsDtoImplCopyWithImpl<_$IpDetailsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IpDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _IpDetailsDto extends IpDetailsDto {
  const factory _IpDetailsDto(
      {final String? country,
      final String? regionName,
      final String? city,
      final String? zip,
      final String? timezone,
      final String? isp,
      final String? query}) = _$IpDetailsDtoImpl;
  const _IpDetailsDto._() : super._();

  factory _IpDetailsDto.fromJson(Map<String, dynamic> json) =
      _$IpDetailsDtoImpl.fromJson;

  @override
  String? get country;
  @override
  String? get regionName;
  @override
  String? get city;
  @override
  String? get zip;
  @override
  String? get timezone;
  @override
  String? get isp;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$IpDetailsDtoImplCopyWith<_$IpDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
