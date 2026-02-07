import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool animationCompleted = false;

  void setAnimationCompleted(bool value) {
    animationCompleted = value;
    notifyListeners();
  }
}