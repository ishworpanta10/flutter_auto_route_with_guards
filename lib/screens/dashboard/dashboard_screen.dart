import 'package:flutter/material.dart';

import '../../main.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              MyApp.of(context).authService.authenticated = false;
              // onLoginCallback?.call(true);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const Center(
        child: Text('Dashboard Screen'),
      ),
    );
  }
}
