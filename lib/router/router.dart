import 'package:auto_route/auto_route.dart';

import '../features/home/presentation/pages/home_page.dart';
import '../features/home/presentation/pages/ip_address_page.dart';
import '../features/home/presentation/pages/vpn_servers_list_page.dart';
import '../splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page|Screen|View|Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: IpAddressRoute.page),
        AutoRoute(page: VpnServersListRoute.page),
      ];
}
