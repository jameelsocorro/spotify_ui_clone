import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';

part 'sp_button.g.dart';

@widget
Widget spButton(
  BuildContext context, {
  String title,
  Function onPressed,
  double height,
  double width,
}) {
  return Container(
    height: height ?? kSpacingUnit * 4,
    width: height ?? kSpacingUnit * 10,
    decoration: BoxDecoration(
      color: kGreenColor,
      borderRadius: BorderRadius.circular(kSpacingUnit * 3),
    ),
    child: Center(
      child: Text(
        title,
        style: kBodyTextStyle.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
