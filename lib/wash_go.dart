
import 'package:flutter/material.dart';
import 'package:wash_go/core/routes/app_router.dart';
import 'package:wash_go/core/routes/app_routes.dart';
import 'package:wash_go/features/register/rigister_screen.dart';


class WashGo extends StatelessWidget {
  const WashGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.registerscreen,
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}