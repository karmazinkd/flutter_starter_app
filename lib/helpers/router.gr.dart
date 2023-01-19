// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../pages/details_age.dart' as _i5;
import '../pages/home_page.dart' as _i4;
import '../pages/main_menu_page.dart' as _i2;
import '../pages/profile_page.dart' as _i6;
import '../pages/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainMenuRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.MainMenuPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    DetailsRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.DetailsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashRouter.name,
          path: '/',
        ),
        _i7.RouteConfig(
          MainMenuRoute.name,
          path: '/main',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainMenuRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  DetailsRoute.name,
                  path: 'details-page',
                  parent: HomeRouter.name,
                ),
              ],
            )
          ],
        ),
        _i7.RouteConfig(
          ProfileRouter.name,
          path: 'profile',
          children: [
            _i7.RouteConfig(
              ProfileRoute.name,
              path: '',
              parent: ProfileRouter.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRouter extends _i7.PageRouteInfo<void> {
  const SplashRouter()
      : super(
          SplashRouter.name,
          path: '/',
        );

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i2.MainMenuPage]
class MainMenuRoute extends _i7.PageRouteInfo<void> {
  const MainMenuRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainMenuRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainMenuRoute';
}

/// generated route for
/// [_i3.EmptyRouterScreen]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.EmptyRouterScreen]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.DetailsPage]
class DetailsRoute extends _i7.PageRouteInfo<void> {
  const DetailsRoute()
      : super(
          DetailsRoute.name,
          path: 'details-page',
        );

  static const String name = 'DetailsRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
