// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Option<Failure> get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  VpnStatusEnum get vpnStatusEnum => throw _privateConstructorUsedError;
  Option<IpDetails> get ipDetails => throw _privateConstructorUsedError;
  bool get ipDetailsLoading => throw _privateConstructorUsedError;
  List<Vpn> get vpnServers => throw _privateConstructorUsedError;
  bool get vpnServersLoading => throw _privateConstructorUsedError;
  Option<Vpn> get selectedVpn => throw _privateConstructorUsedError;
  Duration get time => throw _privateConstructorUsedError;
  Timer? get timer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Option<Failure> failure,
      bool isLoading,
      VpnStatusEnum vpnStatusEnum,
      Option<IpDetails> ipDetails,
      bool ipDetailsLoading,
      List<Vpn> vpnServers,
      bool vpnServersLoading,
      Option<Vpn> selectedVpn,
      Duration time,
      Timer? timer});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? isLoading = null,
    Object? vpnStatusEnum = null,
    Object? ipDetails = null,
    Object? ipDetailsLoading = null,
    Object? vpnServers = null,
    Object? vpnServersLoading = null,
    Object? selectedVpn = null,
    Object? time = null,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vpnStatusEnum: null == vpnStatusEnum
          ? _value.vpnStatusEnum
          : vpnStatusEnum // ignore: cast_nullable_to_non_nullable
              as VpnStatusEnum,
      ipDetails: null == ipDetails
          ? _value.ipDetails
          : ipDetails // ignore: cast_nullable_to_non_nullable
              as Option<IpDetails>,
      ipDetailsLoading: null == ipDetailsLoading
          ? _value.ipDetailsLoading
          : ipDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vpnServers: null == vpnServers
          ? _value.vpnServers
          : vpnServers // ignore: cast_nullable_to_non_nullable
              as List<Vpn>,
      vpnServersLoading: null == vpnServersLoading
          ? _value.vpnServersLoading
          : vpnServersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedVpn: null == selectedVpn
          ? _value.selectedVpn
          : selectedVpn // ignore: cast_nullable_to_non_nullable
              as Option<Vpn>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Failure> failure,
      bool isLoading,
      VpnStatusEnum vpnStatusEnum,
      Option<IpDetails> ipDetails,
      bool ipDetailsLoading,
      List<Vpn> vpnServers,
      bool vpnServersLoading,
      Option<Vpn> selectedVpn,
      Duration time,
      Timer? timer});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? isLoading = null,
    Object? vpnStatusEnum = null,
    Object? ipDetails = null,
    Object? ipDetailsLoading = null,
    Object? vpnServers = null,
    Object? vpnServersLoading = null,
    Object? selectedVpn = null,
    Object? time = null,
    Object? timer = freezed,
  }) {
    return _then(_$HomeStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vpnStatusEnum: null == vpnStatusEnum
          ? _value.vpnStatusEnum
          : vpnStatusEnum // ignore: cast_nullable_to_non_nullable
              as VpnStatusEnum,
      ipDetails: null == ipDetails
          ? _value.ipDetails
          : ipDetails // ignore: cast_nullable_to_non_nullable
              as Option<IpDetails>,
      ipDetailsLoading: null == ipDetailsLoading
          ? _value.ipDetailsLoading
          : ipDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vpnServers: null == vpnServers
          ? _value._vpnServers
          : vpnServers // ignore: cast_nullable_to_non_nullable
              as List<Vpn>,
      vpnServersLoading: null == vpnServersLoading
          ? _value.vpnServersLoading
          : vpnServersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedVpn: null == selectedVpn
          ? _value.selectedVpn
          : selectedVpn // ignore: cast_nullable_to_non_nullable
              as Option<Vpn>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.failure,
      required this.isLoading,
      required this.vpnStatusEnum,
      required this.ipDetails,
      required this.ipDetailsLoading,
      required final List<Vpn> vpnServers,
      required this.vpnServersLoading,
      required this.selectedVpn,
      required this.time,
      required this.timer})
      : _vpnServers = vpnServers;

  @override
  final Option<Failure> failure;
  @override
  final bool isLoading;
  @override
  final VpnStatusEnum vpnStatusEnum;
  @override
  final Option<IpDetails> ipDetails;
  @override
  final bool ipDetailsLoading;
  final List<Vpn> _vpnServers;
  @override
  List<Vpn> get vpnServers {
    if (_vpnServers is EqualUnmodifiableListView) return _vpnServers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vpnServers);
  }

  @override
  final bool vpnServersLoading;
  @override
  final Option<Vpn> selectedVpn;
  @override
  final Duration time;
  @override
  final Timer? timer;

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, vpnStatusEnum: $vpnStatusEnum, ipDetails: $ipDetails, ipDetailsLoading: $ipDetailsLoading, vpnServers: $vpnServers, vpnServersLoading: $vpnServersLoading, selectedVpn: $selectedVpn, time: $time, timer: $timer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.vpnStatusEnum, vpnStatusEnum) ||
                other.vpnStatusEnum == vpnStatusEnum) &&
            (identical(other.ipDetails, ipDetails) ||
                other.ipDetails == ipDetails) &&
            (identical(other.ipDetailsLoading, ipDetailsLoading) ||
                other.ipDetailsLoading == ipDetailsLoading) &&
            const DeepCollectionEquality()
                .equals(other._vpnServers, _vpnServers) &&
            (identical(other.vpnServersLoading, vpnServersLoading) ||
                other.vpnServersLoading == vpnServersLoading) &&
            (identical(other.selectedVpn, selectedVpn) ||
                other.selectedVpn == selectedVpn) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      vpnStatusEnum,
      ipDetails,
      ipDetailsLoading,
      const DeepCollectionEquality().hash(_vpnServers),
      vpnServersLoading,
      selectedVpn,
      time,
      timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final Option<Failure> failure,
      required final bool isLoading,
      required final VpnStatusEnum vpnStatusEnum,
      required final Option<IpDetails> ipDetails,
      required final bool ipDetailsLoading,
      required final List<Vpn> vpnServers,
      required final bool vpnServersLoading,
      required final Option<Vpn> selectedVpn,
      required final Duration time,
      required final Timer? timer}) = _$HomeStateImpl;

  @override
  Option<Failure> get failure;
  @override
  bool get isLoading;
  @override
  VpnStatusEnum get vpnStatusEnum;
  @override
  Option<IpDetails> get ipDetails;
  @override
  bool get ipDetailsLoading;
  @override
  List<Vpn> get vpnServers;
  @override
  bool get vpnServersLoading;
  @override
  Option<Vpn> get selectedVpn;
  @override
  Duration get time;
  @override
  Timer? get timer;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
