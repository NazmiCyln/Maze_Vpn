// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';

import 'package:flutter/services.dart';

import '../../features/home/data/DTOs/vpn_status/vpn_status_dto.dart';
import '../../features/home/domain/models/vpn_config.dart';
import '../../features/home/domain/models/vpn_status.dart';

enum VpnStatusEnum { connecting, connected, disconnected }

class VpnService {
  static const String _eventChannelVpnStage = "vpnStage";
  static const String _eventChannelVpnStatus = "vpnStatus";
  static const String _methodChannelVpnControl = "vpnControl";

  static Stream<String> vpnStageSnapshot() => const EventChannel(_eventChannelVpnStage).receiveBroadcastStream().cast();

  static Stream<VpnStatus?> vpnStatusSnapshot() => const EventChannel(_eventChannelVpnStatus)
      .receiveBroadcastStream()
      .map((event) => VpnStatusDto.fromJson(jsonDecode(event as String) as Map<String, dynamic>).toDomain())
      .cast();

  static Future<void> startVpn(VpnConfig vpnConfig) async {
    return const MethodChannel(_methodChannelVpnControl).invokeMethod(
      "start",
      {
        "config": vpnConfig.config,
        "country": vpnConfig.country,
        "username": vpnConfig.username,
        "password": vpnConfig.password,
      },
    );
  }

  static Future<void> stopVpn() => const MethodChannel(_methodChannelVpnControl).invokeMethod("stop");

  static Future<void> openKillSwitch() => const MethodChannel(_methodChannelVpnControl).invokeMethod("kill_switch");

  static Future<void> refreshStage() => const MethodChannel(_methodChannelVpnControl).invokeMethod("refresh");

  static Future<String?> stage() => const MethodChannel(_methodChannelVpnControl).invokeMethod("stage");

  static Future<bool> isConnected() => stage().then((value) => value?.toLowerCase() == "connected");

  static const String vpnConnected = "connected";
  static const String vpnDisconnected = "disconnected";
  static const String vpnWaitConnection = "wait_connection";
  static const String vpnAuthenticating = "authenticating";
  static const String vpnReconnect = "reconnect";
  static const String vpnNoConnection = "no_connection";
  static const String vpnConnecting = "connecting";
  static const String vpnPrepare = "prepare";
  static const String vpnDenied = "denied";
}
