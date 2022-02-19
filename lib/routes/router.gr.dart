// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/dashboard/dashboard_screen.dart' as _i2;
import '../screens/screens.dart' as _i1;
import 'route_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.routeGuard})
      : super(navigatorKey);

  final _i5.RouteGuard routeGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.LoginScreen(
              key: args.key, onLoginCallback: args.onLoginCallback));
    },
    AboutRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutScreen());
    },
    ProductsRoute.name: (routeData) {
      return _i3.MaterialPageX<_i3.EmptyRouterPage>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProfileScreen());
    },
    ProductsScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProductsScreen());
    },
    AddProductsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AddProductsScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(DashboardRoute.name, path: '/dashboard', guards: [
          routeGuard
        ], children: [
          _i3.RouteConfig(ProductsRoute.name,
              path: 'products',
              parent: DashboardRoute.name,
              children: [
                _i3.RouteConfig(ProductsScreenRoute.name,
                    path: '', parent: ProductsRoute.name),
                _i3.RouteConfig(AddProductsRoute.name,
                    path: 'add_products', parent: ProductsRoute.name)
              ]),
          _i3.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name)
        ]),
        _i3.RouteConfig(LoginRoute.name, path: '/login'),
        _i3.RouteConfig(AboutRoute.name, path: '/about')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i3.PageRouteInfo<void> {
  const DashboardRoute({List<_i3.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i4.Key? key, dynamic Function(bool)? onLoginCallback})
      : super(LoginRoute.name,
            path: '/login',
            args: LoginRouteArgs(key: key, onLoginCallback: onLoginCallback));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginCallback});

  final _i4.Key? key;

  final dynamic Function(bool)? onLoginCallback;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i3.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProductsRoute extends _i3.PageRouteInfo<void> {
  const ProductsRoute({List<_i3.PageRouteInfo>? children})
      : super(ProductsRoute.name, path: 'products', initialChildren: children);

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i1.ProfileScreen]
class ProfileRoute extends _i3.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i1.ProductsScreen]
class ProductsScreenRoute extends _i3.PageRouteInfo<void> {
  const ProductsScreenRoute() : super(ProductsScreenRoute.name, path: '');

  static const String name = 'ProductsScreenRoute';
}

/// generated route for
/// [_i1.AddProductsScreen]
class AddProductsRoute extends _i3.PageRouteInfo<void> {
  const AddProductsRoute() : super(AddProductsRoute.name, path: 'add_products');

  static const String name = 'AddProductsRoute';
}
