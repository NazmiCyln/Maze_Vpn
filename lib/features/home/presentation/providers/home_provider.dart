import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/injections/locator.dart';
import '../../../../services/vpn/vpn_service.dart';
import '../../domain/models/vpn.dart';
import '../../domain/models/vpn_config.dart';
import '../states/home/home_state.dart';

final homeProvider = NotifierProvider.autoDispose<HomeNotifier, HomeState>(HomeNotifier.new);

class HomeNotifier extends AutoDisposeNotifier<HomeState> {
  HomeNotifier();

  @override
  HomeState build() {
    _init();
    return HomeState.initial();
  }

  Future<void> _init() async {
    await getIpDetails();

    await getVpnServers();

    // final icConnected = await VpnService.isConnected();

    // if (icConnected) {
    //   await VpnService.stopVpn();
    // }

    // await VpnService.stopVpn();
  }

  Future<void> connectToVpn() async {
    state = state.copyWith(isLoading: true);

    final vpn = state.selectedVpn.fold(
      () => state.vpnServers[math.Random().nextInt(state.vpnServers.length)],
      (t) => t,
    );

    await changeSelectedVpn(some(vpn));

    const vpnState = VpnService.vpnDisconnected;

    if (vpn.openVPNConfigDataBase64.isEmpty) {}

    if (vpnState == VpnService.vpnDisconnected) {
      final data = const Base64Decoder().convert(vpn.openVPNConfigDataBase64);
      final config = const Utf8Decoder().convert(data);
      final vpnConfig = VpnConfig(country: vpn.countryLong, username: 'vpn', password: 'vpn', config: config);

      try {
        await VpnService.startVpn(vpnConfig);
      } on Exception {
        state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.disconnected);
      }
    } else {
      await VpnService.stopVpn();

      state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.disconnected);
    }
  }

  Future<void> stopVpn() async {
    try {
      await VpnService.stopVpn();

      state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.disconnected);
    } on Exception {
      state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.connected);
    }
  }

  void startTime() {
    state = state.copyWith(time: Duration.zero);

    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state.copyWith(time: Duration(seconds: state.time.inSeconds + 1));
    });

    state = state.copyWith(timer: timer);
  }

  void stopTime() {
    if (state.timer != null) {
      state.timer?.cancel();

      state = state.copyWith(timer: null);
    }
  }

  Future<void> getVpnServers() async {
    final result = await ref.read(homeRepositoryProvider).getVpnServers();

    state = state.copyWith(
      vpnServers: result.getOrElse((l) => []),
      vpnServersLoading: false,
      failure: result.swap().toOption(),
    );
  }

  Future<void> getIpDetails() async {
    final result = await ref.read(homeRepositoryProvider).getIpDetails();

    state = state.copyWith(ipDetails: result.toOption(), ipDetailsLoading: false);
  }

  Future<void> refreshVpnServers() async {
    state = state.copyWith(vpnServersLoading: true, failure: none());

    await ref.read(localeResourcesServiceProvider).deleteLastVpnCacheTime();

    await getVpnServers();
  }

  Future<void> refreshIpDetails() async {
    state = state.copyWith(ipDetailsLoading: true);

    await getIpDetails();
  }

  Future<void> changeSelectedVpn(Option<Vpn> vpn) async {
    state = state.copyWith(selectedVpn: vpn);
  }

  void connectVpnStatus() {
    state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.connected);

    startTime();

    refreshIpDetails();
  }

  void disconnectVpnStatus() {
    state = state.copyWith(isLoading: false, vpnStatusEnum: VpnStatusEnum.disconnected);

    changeSelectedVpn(none());

    stopTime();
  }

  void connectingVpnStatus() {
    state = state.copyWith(isLoading: true, vpnStatusEnum: VpnStatusEnum.connecting);
  }
}
