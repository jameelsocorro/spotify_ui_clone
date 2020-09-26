import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';

part 'song_controller.g.dart';

@widget
Widget songController(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(
        'assets/icons/next.svg',
        height: 18.sp,
        width: 18.sp,
      ),
      SizedBox(width: kSpacingUnit * 3),
      Container(
        height: kSpacingUnit * 7,
        width: kSpacingUnit * 7,
        decoration: BoxDecoration(
          color: kTextColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/play.svg',
            height: 24.sp,
            width: 24.sp,
            color: kBlackColor,
          ),
        ),
      ),
      SizedBox(width: kSpacingUnit * 3),
      SvgPicture.asset(
        'assets/icons/back.svg',
        height: 18.sp,
        width: 18.sp,
      ),
    ],
  );
}
