import 'package:flutter/material.dart';
import 'package:wash_go/core/routes/app_routes.dart';
import 'package:wash_go/features/register/rigister_screen.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerscreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
    }
  }
}
