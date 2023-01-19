import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_starter_app/pages/details_age.dart';
import 'package:flutter_starter_app/pages/home_page.dart';
import 'package:flutter_starter_app/pages/main_menu_page.dart';
import 'package:flutter_starter_app/pages/profile_page.dart';
import 'package:flutter_starter_app/pages/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    /// Splash page - first page that is shown when app is opened
    AutoRoute<void>(page: SplashPage, initial: true, path: '/', name: 'SplashRouter'),

    AutoRoute<void>(
      page: MainMenuPage,
      path: '/main',
      children: <AutoRoute<dynamic>>[
        AutoRoute<void>(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterScreen,
          children: <AutoRoute<dynamic>>[
            AutoRoute<void>(page: HomePage, initial: true),
            AutoRoute<void>(page: DetailsPage),
          ],
        ),
      ],
    ),

    AutoRoute<void>(
      path: 'profile',
      name: 'ProfileRouter',
      page: EmptyRouterScreen,
      children: <AutoRoute<dynamic>>[
        AutoRoute<void>(page: ProfilePage, initial: true),
      ],
    ),
  ],
)
class $AppRouter {}
