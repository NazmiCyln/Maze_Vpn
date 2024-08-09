import 'package:equatable/equatable.dart';

class VpnStatus extends Equatable {
  final String duration;
  final String lastPacketReceive;
  final String byteIn;
  final String byteOut;

  const VpnStatus({
    required this.duration,
    required this.lastPacketReceive,
    required this.byteIn,
    required this.byteOut,
  });

  @override
  List<dynamic> get props => [duration, lastPacketReceive, byteIn, byteOut];
}
