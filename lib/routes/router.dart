import 'package:auto_route/auto_route.dart';
import 'package:simple_auto_route/screens/dashboard/dashboard_screen.dart';

import '../screens/screens.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRoute',
      path: '/',
    ),
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: '/dashboard',
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
    AutoRoute(page: AboutScreen, name: 'AboutRoute', path: '/about'),
  ],
)
class $AppRouter {}
