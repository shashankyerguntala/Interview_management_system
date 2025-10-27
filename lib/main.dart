import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/app_theme.dart';
import 'package:hire_pro/core/di/di.dart';
import 'package:hire_pro/core/routes/go_routes.dart';

void main() async {
  await Di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      title: 'INTERVIEW MANAGEMENT SYSTEM',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
