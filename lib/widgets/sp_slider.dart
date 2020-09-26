import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';

part 'sp_slider.g.dart';

@widget
Widget spSlider(BuildContext context, {double value}) {
  return Column(
    children: [
      Container(
        height: 4.w,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.w),
          child: Stack(
            children: [
              Container(
                color: Color.fromRGBO(255, 255, 255, 0.1),
              ),
              Container(
                width: value,
                color: kTextColor,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: kSpacingUnit),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '0:10',
            style: kCaptionTextStyle,
          ),
          Text(
            '1:49',
            style: kCaptionTextStyle,
          ),
        ],
      )
    ],
  );
}
