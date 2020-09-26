import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';

part 'shuffle_button.g.dart';

@widget
Widget shuffleButton(BuildContext context, {Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: kSpacingUnit * 1.2,
      width: kSpacingUnit * 1.6,
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(4.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: SvgPicture.asset('assets/icons/shuffle.svg'),
      ),
    ),
  );
}
