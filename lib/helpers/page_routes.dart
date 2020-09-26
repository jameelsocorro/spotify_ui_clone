import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SharedAxisPageRoute extends PageRouteBuilder {
  SharedAxisPageRoute({
    Widget page,
    SharedAxisTransitionType transitionType = SharedAxisTransitionType.horizontal,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: transitionType,
              child: child,
            );
          },
        );
}
