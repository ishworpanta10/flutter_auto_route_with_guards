import 'package:auto_route/auto_route.dart';
import 'package:simple_auto_route/routes/route_guard.dart';
import 'package:simple_auto_route/screens/dashboard/dashboard_screen.dart';

import '../screens/screens.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRoute',
      path: '/',
    ),

    ///Now we want to guard all the screens that come under DashboardRoute. For that,
    /// we can pass our route guard to the AutoRoute object declaring our DashboardScreen route as a property
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: '/dashboard',
      guards: [RouteGuard],
      children: <AutoRoute>[
        AutoRoute<EmptyRouterPage>(
          page: EmptyRouterPage,
          name: 'ProductsRoute',
          path: 'products',
          children: [
            AutoRoute(page: ProductsScreen, path: ''),
            AutoRoute(page: AddProductsScreen, name: 'AddProductsRoute', path: 'add_products'),
          ],
        ),
        AutoRoute(page: ProfileScreen, name: 'ProfileRoute', path: 'profile'),
      ],
    ),
    AutoRoute(page: LoginScreen, name: 'LoginRoute', path: '/login'),
    AutoRoute(page: AboutScreen, name: 'AboutRoute', path: '/about'),
  ],
)
class $AppRouter {}
