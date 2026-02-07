import 'package:flutter/cupertino.dart';

class ZoomInOpacityPageRoute extends PageRouteBuilder {
  final Widget page;

  ZoomInOpacityPageRoute({required this.page})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Set up the opacity and scale animation
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.1, end: 1.0).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.linearToEaseOut,
            ),
          ),
          child: child,
        ),
      );
    },
  );
}

class ZoomInOpacityBottomPageRoute extends PageRouteBuilder {
  final Widget page;

  ZoomInOpacityBottomPageRoute({required this.page})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Create a combined animation for slide, scale, and opacity
      var begin = Offset(0, 0.5); // Start from the bottom
      var end = Offset.zero;        // End at the center
      var curve = Curves.easeInOut;

      // Define animations for sliding, scaling, and fading
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var opacityTween = Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));
      var scaleTween = Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: FadeTransition(
          opacity: animation.drive(opacityTween),
          child: ScaleTransition(
            scale: animation.drive(scaleTween),
            child: child,
          ),
        ),
      );
    },
  );
}