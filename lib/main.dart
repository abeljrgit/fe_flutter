import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:fe_flutter/presentation/resources/routes_manager.dart';
import 'package:fe_flutter/presentation/resources/theme_manager.dart';

void main() async {
  // Load .env
  await dotenv.load(fileName: ".env");

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor

  // The Singleton pattern is a pattern used in
  // object-oriented programming which ensures
  // that a class has only one instance and also
  // provides a global point of access to it.
  static const MyApp instance = MyApp._internal();

  // Factory for the class instance
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeManager.themeData,
      routerConfig: RouteManager.router,
    );
  }
}
