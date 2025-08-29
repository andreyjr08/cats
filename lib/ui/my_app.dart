import 'package:flutter/material.dart';
import 'package:cats/ui/routes/routes.dart';
import 'package:cats/ui/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.breeds,
      routes: appRoutes,
    );
  }
}
