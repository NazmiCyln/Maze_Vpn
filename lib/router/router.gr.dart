// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(),
      );
    },
    IpAddressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IpAddressPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashPage(),
      );
    },
    VpnServersListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VpnServersListPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IpAddressPage]
class IpAddressRoute extends PageRouteInfo<void> {
  const IpAddressRoute({List<PageRouteInfo>? children})
      : super(
          IpAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'IpAddressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VpnServersListPage]
class VpnServersListRoute extends PageRouteInfo<void> {
  const VpnServersListRoute({List<PageRouteInfo>? children})
      : super(
          VpnServersListRoute.name,
          initialChildren: children,
        );

  static const String name = 'VpnServersListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
