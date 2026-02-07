import 'package:flutter/material.dart';

import '../view/main/main_view.dart';
import '../view/splash/splash_view.dart';
import 'exceptions.dart';

class AppRouter {
  static const String splashScreen = '/';
  static const String mainView = '/main';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case mainView:
        return _fadeRoute(const MainView());

      default:
        throw const RouteException('Route not found!');
    }
  }

  static PageRouteBuilder _fadeRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

}
