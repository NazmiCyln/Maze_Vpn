import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../../../services/vpn/vpn_service.dart';
import '../../../domain/models/ip_details.dart';
import '../../../domain/models/vpn.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Failure> failure,
    required bool isLoading,
    required VpnStatusEnum vpnStatusEnum,
    required Option<IpDetails> ipDetails,
    required bool ipDetailsLoading,
    required List<Vpn> vpnServers,
    required bool vpnServersLoading,
    required Option<Vpn> selectedVpn,
    required Duration time,
    required Timer? timer,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      failure: none(),
      isLoading: false,
      vpnStatusEnum: VpnStatusEnum.disconnected,
      ipDetails: none(),
      ipDetailsLoading: true,
      vpnServers: [],
      selectedVpn: none(),
      vpnServersLoading: true,
      time: Duration.zero,
      timer: null,
    );
  }
}
