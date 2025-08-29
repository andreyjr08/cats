import 'package:cats/ui/pages/home/home_screen.dart';
import 'package:cats/ui/pages/splash/splash_screen.dart';
import 'package:cats/ui/routes/routes.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
  Routes.splash: (_) => SplashScreen(),
  Routes.home: (_) => HomeScreen(),
};
