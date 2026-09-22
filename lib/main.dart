import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:wash_go/core/di/service_locator.dart';
import 'package:wash_go/wash_go.dart';

String? token;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  token = prefs.getString('token');
  await setupGetIt();
  runApp(WashGo());
}
