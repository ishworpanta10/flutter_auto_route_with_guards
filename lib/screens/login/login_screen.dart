import 'package:flutter/material.dart';

import '../../main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key, this.onLoginCallback}) : super(key: key);

  ///Once a user has successfully logged in, we will need a callback from the LoginScreen,
  /// which will send the value to RouteGuard
  final Function(bool loggedIn)? onLoginCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                MyApp.of(context).authService.authenticated = true;
                onLoginCallback?.call(true);
              },
              child: const Text('Tap to login'),
            ),
          ),
        ],
      ),
    );
  }
}
