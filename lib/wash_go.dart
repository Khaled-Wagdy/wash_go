import 'package:flutter/material.dart';

import 'package:wash_go/core/routes/app_router.dart';
import 'package:wash_go/core/routes/app_routes.dart';
import 'package:wash_go/main.dart';

class WashGo extends StatelessWidget {
  const WashGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: getInitialPage(),
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }

  getInitialPage() {
    if (token != null) {
      return AppRoutes.loginscreen;
    } else {
      return AppRoutes.registerscreen;
    }
  }
}
