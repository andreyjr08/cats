import 'package:cats/ui/pages/breeds/breed_detail_page.dart';
import 'package:cats/ui/pages/breeds/breeds_page.dart';
import 'package:cats/ui/pages/splash/splash_screen.dart';
import 'package:cats/ui/routes/routes.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
  Routes.splash: (_) => SplashScreen(),
  Routes.breeds: (_) => BreedsPage(),
  Routes.breedDetail: (_) => BreedDetailPage(),
};
