// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vpn_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VpnStatusDto _$VpnStatusDtoFromJson(Map<String, dynamic> json) {
  return _VpnStatusDto.fromJson(json);
}

/// @nodoc
mixin _$VpnStatusDto {
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "last_packet_receive")
  String? get lastPacketReceive => throw _privateConstructorUsedError;
  @JsonKey(name: "byte_in")
  String? get byteIn => throw _privateConstructorUsedError;
  @JsonKey(name: "byte_out")
  String? get byteOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VpnStatusDtoCopyWith<VpnStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VpnStatusDtoCopyWith<$Res> {
  factory $VpnStatusDtoCopyWith(
          VpnStatusDto value, $Res Function(VpnStatusDto) then) =
      _$VpnStatusDtoCopyWithImpl<$Res, VpnStatusDto>;
  @useResult
  $Res call(
      {String? duration,
      @JsonKey(name: "last_packet_receive") String? lastPacketReceive,
      @JsonKey(name: "byte_in") String? byteIn,
      @JsonKey(name: "byte_out") String? byteOut});
}

/// @nodoc
class _$VpnStatusDtoCopyWithImpl<$Res, $Val extends VpnStatusDto>
    implements $VpnStatusDtoCopyWith<$Res> {
  _$VpnStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? lastPacketReceive = freezed,
    Object? byteIn = freezed,
    Object? byteOut = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPacketReceive: freezed == lastPacketReceive
          ? _value.lastPacketReceive
          : lastPacketReceive // ignore: cast_nullable_to_non_nullable
              as String?,
      byteIn: freezed == byteIn
          ? _value.byteIn
          : byteIn // ignore: cast_nullable_to_non_nullable
              as String?,
      byteOut: freezed == byteOut
          ? _value.byteOut
          : byteOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VpnStatusDtoImplCopyWith<$Res>
    implements $VpnStatusDtoCopyWith<$Res> {
  factory _$$VpnStatusDtoImplCopyWith(
          _$VpnStatusDtoImpl value, $Res Function(_$VpnStatusDtoImpl) then) =
      __$$VpnStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? duration,
      @JsonKey(name: "last_packet_receive") String? lastPacketReceive,
      @JsonKey(name: "byte_in") String? byteIn,
      @JsonKey(name: "byte_out") String? byteOut});
}

/// @nodoc
class __$$VpnStatusDtoImplCopyWithImpl<$Res>
    extends _$VpnStatusDtoCopyWithImpl<$Res, _$VpnStatusDtoImpl>
    implements _$$VpnStatusDtoImplCopyWith<$Res> {
  __$$VpnStatusDtoImplCopyWithImpl(
      _$VpnStatusDtoImpl _value, $Res Function(_$VpnStatusDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? lastPacketReceive = freezed,
    Object? byteIn = freezed,
    Object? byteOut = freezed,
  }) {
    return _then(_$VpnStatusDtoImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPacketReceive: freezed == lastPacketReceive
          ? _value.lastPacketReceive
          : lastPacketReceive // ignore: cast_nullable_to_non_nullable
              as String?,
      byteIn: freezed == byteIn
          ? _value.byteIn
          : byteIn // ignore: cast_nullable_to_non_nullable
              as String?,
      byteOut: freezed == byteOut
          ? _value.byteOut
          : byteOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VpnStatusDtoImpl extends _VpnStatusDto {
  const _$VpnStatusDtoImpl(
      {this.duration,
      @JsonKey(name: "last_packet_receive") this.lastPacketReceive,
      @JsonKey(name: "byte_in") this.byteIn,
      @JsonKey(name: "byte_out") this.byteOut})
      : super._();

  factory _$VpnStatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VpnStatusDtoImplFromJson(json);

  @override
  final String? duration;
  @override
  @JsonKey(name: "last_packet_receive")
  final String? lastPacketReceive;
  @override
  @JsonKey(name: "byte_in")
  final String? byteIn;
  @override
  @JsonKey(name: "byte_out")
  final String? byteOut;

  @override
  String toString() {
    return 'VpnStatusDto(duration: $duration, lastPacketReceive: $lastPacketReceive, byteIn: $byteIn, byteOut: $byteOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VpnStatusDtoImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.lastPacketReceive, lastPacketReceive) ||
                other.lastPacketReceive == lastPacketReceive) &&
            (identical(other.byteIn, byteIn) || other.byteIn == byteIn) &&
            (identical(other.byteOut, byteOut) || other.byteOut == byteOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, lastPacketReceive, byteIn, byteOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VpnStatusDtoImplCopyWith<_$VpnStatusDtoImpl> get copyWith =>
      __$$VpnStatusDtoImplCopyWithImpl<_$VpnStatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VpnStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _VpnStatusDto extends VpnStatusDto {
  const factory _VpnStatusDto(
      {final String? duration,
      @JsonKey(name: "last_packet_receive") final String? lastPacketReceive,
      @JsonKey(name: "byte_in") final String? byteIn,
      @JsonKey(name: "byte_out") final String? byteOut}) = _$VpnStatusDtoImpl;
  const _VpnStatusDto._() : super._();

  factory _VpnStatusDto.fromJson(Map<String, dynamic> json) =
      _$VpnStatusDtoImpl.fromJson;

  @override
  String? get duration;
  @override
  @JsonKey(name: "last_packet_receive")
  String? get lastPacketReceive;
  @override
  @JsonKey(name: "byte_in")
  String? get byteIn;
  @override
  @JsonKey(name: "byte_out")
  String? get byteOut;
  @override
  @JsonKey(ignore: true)
  _$$VpnStatusDtoImplCopyWith<_$VpnStatusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
