// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vpn_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VpnDto _$VpnDtoFromJson(Map<String, dynamic> json) {
  return _VpnDto.fromJson(json);
}

/// @nodoc
mixin _$VpnDto {
  @JsonKey(name: "HostName")
  String? get hostname => throw _privateConstructorUsedError;
  @JsonKey(name: "IP")
  String? get ip => throw _privateConstructorUsedError;
  @JsonKey(name: "Ping")
  dynamic get ping => throw _privateConstructorUsedError;
  @JsonKey(name: "Speed")
  int? get speed => throw _privateConstructorUsedError;
  @JsonKey(name: "CountryLong")
  String? get countryLong => throw _privateConstructorUsedError;
  @JsonKey(name: "CountryShort")
  String? get countryShort => throw _privateConstructorUsedError;
  @JsonKey(name: "NumVpnSessions")
  int? get numVpnSessions => throw _privateConstructorUsedError;
  @JsonKey(name: "OpenVPN_ConfigData_Base64")
  String? get openVPNConfigDataBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VpnDtoCopyWith<VpnDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VpnDtoCopyWith<$Res> {
  factory $VpnDtoCopyWith(VpnDto value, $Res Function(VpnDto) then) =
      _$VpnDtoCopyWithImpl<$Res, VpnDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "HostName") String? hostname,
      @JsonKey(name: "IP") String? ip,
      @JsonKey(name: "Ping") dynamic ping,
      @JsonKey(name: "Speed") int? speed,
      @JsonKey(name: "CountryLong") String? countryLong,
      @JsonKey(name: "CountryShort") String? countryShort,
      @JsonKey(name: "NumVpnSessions") int? numVpnSessions,
      @JsonKey(name: "OpenVPN_ConfigData_Base64")
      String? openVPNConfigDataBase64});
}

/// @nodoc
class _$VpnDtoCopyWithImpl<$Res, $Val extends VpnDto>
    implements $VpnDtoCopyWith<$Res> {
  _$VpnDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostname = freezed,
    Object? ip = freezed,
    Object? ping = freezed,
    Object? speed = freezed,
    Object? countryLong = freezed,
    Object? countryShort = freezed,
    Object? numVpnSessions = freezed,
    Object? openVPNConfigDataBase64 = freezed,
  }) {
    return _then(_value.copyWith(
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      ping: freezed == ping
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as dynamic,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      countryLong: freezed == countryLong
          ? _value.countryLong
          : countryLong // ignore: cast_nullable_to_non_nullable
              as String?,
      countryShort: freezed == countryShort
          ? _value.countryShort
          : countryShort // ignore: cast_nullable_to_non_nullable
              as String?,
      numVpnSessions: freezed == numVpnSessions
          ? _value.numVpnSessions
          : numVpnSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      openVPNConfigDataBase64: freezed == openVPNConfigDataBase64
          ? _value.openVPNConfigDataBase64
          : openVPNConfigDataBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VpnDtoImplCopyWith<$Res> implements $VpnDtoCopyWith<$Res> {
  factory _$$VpnDtoImplCopyWith(
          _$VpnDtoImpl value, $Res Function(_$VpnDtoImpl) then) =
      __$$VpnDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "HostName") String? hostname,
      @JsonKey(name: "IP") String? ip,
      @JsonKey(name: "Ping") dynamic ping,
      @JsonKey(name: "Speed") int? speed,
      @JsonKey(name: "CountryLong") String? countryLong,
      @JsonKey(name: "CountryShort") String? countryShort,
      @JsonKey(name: "NumVpnSessions") int? numVpnSessions,
      @JsonKey(name: "OpenVPN_ConfigData_Base64")
      String? openVPNConfigDataBase64});
}

/// @nodoc
class __$$VpnDtoImplCopyWithImpl<$Res>
    extends _$VpnDtoCopyWithImpl<$Res, _$VpnDtoImpl>
    implements _$$VpnDtoImplCopyWith<$Res> {
  __$$VpnDtoImplCopyWithImpl(
      _$VpnDtoImpl _value, $Res Function(_$VpnDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostname = freezed,
    Object? ip = freezed,
    Object? ping = freezed,
    Object? speed = freezed,
    Object? countryLong = freezed,
    Object? countryShort = freezed,
    Object? numVpnSessions = freezed,
    Object? openVPNConfigDataBase64 = freezed,
  }) {
    return _then(_$VpnDtoImpl(
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      ping: freezed == ping
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as dynamic,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      countryLong: freezed == countryLong
          ? _value.countryLong
          : countryLong // ignore: cast_nullable_to_non_nullable
              as String?,
      countryShort: freezed == countryShort
          ? _value.countryShort
          : countryShort // ignore: cast_nullable_to_non_nullable
              as String?,
      numVpnSessions: freezed == numVpnSessions
          ? _value.numVpnSessions
          : numVpnSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      openVPNConfigDataBase64: freezed == openVPNConfigDataBase64
          ? _value.openVPNConfigDataBase64
          : openVPNConfigDataBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VpnDtoImpl extends _VpnDto {
  const _$VpnDtoImpl(
      {@JsonKey(name: "HostName") this.hostname,
      @JsonKey(name: "IP") this.ip,
      @JsonKey(name: "Ping") this.ping,
      @JsonKey(name: "Speed") this.speed,
      @JsonKey(name: "CountryLong") this.countryLong,
      @JsonKey(name: "CountryShort") this.countryShort,
      @JsonKey(name: "NumVpnSessions") this.numVpnSessions,
      @JsonKey(name: "OpenVPN_ConfigData_Base64") this.openVPNConfigDataBase64})
      : super._();

  factory _$VpnDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VpnDtoImplFromJson(json);

  @override
  @JsonKey(name: "HostName")
  final String? hostname;
  @override
  @JsonKey(name: "IP")
  final String? ip;
  @override
  @JsonKey(name: "Ping")
  final dynamic ping;
  @override
  @JsonKey(name: "Speed")
  final int? speed;
  @override
  @JsonKey(name: "CountryLong")
  final String? countryLong;
  @override
  @JsonKey(name: "CountryShort")
  final String? countryShort;
  @override
  @JsonKey(name: "NumVpnSessions")
  final int? numVpnSessions;
  @override
  @JsonKey(name: "OpenVPN_ConfigData_Base64")
  final String? openVPNConfigDataBase64;

  @override
  String toString() {
    return 'VpnDto(hostname: $hostname, ip: $ip, ping: $ping, speed: $speed, countryLong: $countryLong, countryShort: $countryShort, numVpnSessions: $numVpnSessions, openVPNConfigDataBase64: $openVPNConfigDataBase64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VpnDtoImpl &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            const DeepCollectionEquality().equals(other.ping, ping) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.countryLong, countryLong) ||
                other.countryLong == countryLong) &&
            (identical(other.countryShort, countryShort) ||
                other.countryShort == countryShort) &&
            (identical(other.numVpnSessions, numVpnSessions) ||
                other.numVpnSessions == numVpnSessions) &&
            (identical(
                    other.openVPNConfigDataBase64, openVPNConfigDataBase64) ||
                other.openVPNConfigDataBase64 == openVPNConfigDataBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hostname,
      ip,
      const DeepCollectionEquality().hash(ping),
      speed,
      countryLong,
      countryShort,
      numVpnSessions,
      openVPNConfigDataBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VpnDtoImplCopyWith<_$VpnDtoImpl> get copyWith =>
      __$$VpnDtoImplCopyWithImpl<_$VpnDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VpnDtoImplToJson(
      this,
    );
  }
}

abstract class _VpnDto extends VpnDto {
  const factory _VpnDto(
      {@JsonKey(name: "HostName") final String? hostname,
      @JsonKey(name: "IP") final String? ip,
      @JsonKey(name: "Ping") final dynamic ping,
      @JsonKey(name: "Speed") final int? speed,
      @JsonKey(name: "CountryLong") final String? countryLong,
      @JsonKey(name: "CountryShort") final String? countryShort,
      @JsonKey(name: "NumVpnSessions") final int? numVpnSessions,
      @JsonKey(name: "OpenVPN_ConfigData_Base64")
      final String? openVPNConfigDataBase64}) = _$VpnDtoImpl;
  const _VpnDto._() : super._();

  factory _VpnDto.fromJson(Map<String, dynamic> json) = _$VpnDtoImpl.fromJson;

  @override
  @JsonKey(name: "HostName")
  String? get hostname;
  @override
  @JsonKey(name: "IP")
  String? get ip;
  @override
  @JsonKey(name: "Ping")
  dynamic get ping;
  @override
  @JsonKey(name: "Speed")
  int? get speed;
  @override
  @JsonKey(name: "CountryLong")
  String? get countryLong;
  @override
  @JsonKey(name: "CountryShort")
  String? get countryShort;
  @override
  @JsonKey(name: "NumVpnSessions")
  int? get numVpnSessions;
  @override
  @JsonKey(name: "OpenVPN_ConfigData_Base64")
  String? get openVPNConfigDataBase64;
  @override
  @JsonKey(ignore: true)
  _$$VpnDtoImplCopyWith<_$VpnDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
