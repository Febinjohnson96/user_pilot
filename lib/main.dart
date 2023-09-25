import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_pilot/config/apptheme.dart';
import 'package:user_pilot/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: approutes,
      theme: AppTheme.appTheme,
    );
  }
}
