import 'package:equatable/equatable.dart';

class IpDetails extends Equatable {
  final String country;
  final String regionName;
  final String city;
  final String zip;
  final String timezone;
  final String isp;
  final String query;

  const IpDetails({
    required this.country,
    required this.regionName,
    required this.city,
    required this.zip,
    required this.timezone,
    required this.isp,
    required this.query,
  });

  @override
  List<dynamic> get props => [country, regionName, city, zip, timezone, isp, query];
}
