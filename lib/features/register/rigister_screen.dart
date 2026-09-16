import 'package:flutter/material.dart';
import 'package:wash_go/core/routes/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.loginscreen);
              ;
            },
            icon: Icon(Icons.eight_mp, size: 50),
          ),
        ],
      ),
    );
  }
}
