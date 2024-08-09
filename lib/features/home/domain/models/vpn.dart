import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'vpn.g.dart';

@JsonSerializable()
@Collection(inheritance: false, ignore: {'props', 'copyWith'})
class Vpn extends Equatable {
  final Id? isarId;
  final String hostname;
  final String ip;
  final String ping;
  final int speed;
  final String countryLong;
  final String countryShort;
  final int numVpnSessions;
  final String openVPNConfigDataBase64;

  const Vpn({
    this.isarId = Isar.autoIncrement,
    required this.hostname,
    required this.ip,
    required this.ping,
    required this.speed,
    required this.countryLong,
    required this.countryShort,
    required this.numVpnSessions,
    required this.openVPNConfigDataBase64,
  });

  @override
  List<dynamic> get props =>
      [hostname, ip, ping, speed, countryLong, countryShort, numVpnSessions, openVPNConfigDataBase64];
}
