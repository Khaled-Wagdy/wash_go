import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_go/core/di/service_locator.dart';
import 'package:wash_go/core/routes/app_routes.dart';
import 'package:wash_go/features/register/presenetation/cubit/register_cubit.dart';
import 'package:wash_go/features/register/rigister_screen.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(getIt()),
            child: RegisterScreen(),
          ),
        );
    }
  }
}
