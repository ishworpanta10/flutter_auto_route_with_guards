import 'package:flutter/material.dart';
import 'package:simple_auto_route/routes/router.gr.dart';

import 'routes/route_guard.dart';
import 'utils/auth_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  ///we want to access any member of a state up this tree, we can use this function to first
  /// find MyAppState within this context, and then access the authService member variable
  static MyAppState of(BuildContext context) => context.findAncestorStateOfType<MyAppState>()!;
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final authService = AuthService();
  // final _appRouter = AppRouter();
  late final _appRouter = AppRouter(routeGuard: RouteGuard(authService));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      ///Auto Route config
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
