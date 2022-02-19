import 'package:auto_route/auto_route.dart';
import 'package:simple_auto_route/routes/router.gr.dart';

import '../utils/auth_services.dart';

class RouteGuard extends AutoRedirectGuard {
  final AuthService authService;
  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }

  ///onNavigation() is called anytime navigation takes place
  /// In case an unauthenticated user enters the url of the “add products” screen for example,
  /// the following occurs: First, they are taken to a login screen. Once logged in, onNavigation() is fired.
  /// The resolver object has the data about where the user wanted to navigate (“add products” in this case)
  /// and takes the user there
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.authenticated) return resolver.next();

    ///router.remoteLast() to remove this login screen from our navigation stack,
    /// so when user presses the back button they are not taken to a login screen again.
    router.push(
      LoginRoute(
        onLoginCallback: (_) {
          resolver.next();
          router.removeLast();
        },
      ),
    );
  }
}
