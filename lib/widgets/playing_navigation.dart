import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/models/song_model.dart';

part 'playing_navigation.g.dart';

@widget
Widget playingNavigation(BuildContext context, {@required Song currentSong}) {
  return Container(
    height: kSpacingUnit * 7,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Color(0xFF4D5559),
          width: 1.sp,
        ),
        bottom: BorderSide(
          color: kBlackColor,
          width: 1.sp,
        ),
      ),
    ),
    child: Row(
      children: [
        Image.asset(
          currentSong.image,
          height: kSpacingUnit * 7,
          width: kSpacingUnit * 7,
        ),
        SizedBox(width: kSpacingUnit),
        Text(
          currentSong.title,
          style: kCaptionTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
        SizedBox(width: kSpacingUnit * 0.5),
        SvgPicture.asset(
          'assets/icons/dot.svg',
          height: 3.sp,
          width: 3.sp,
        ),
        SizedBox(width: kSpacingUnit * 0.5),
        Text(
          currentSong.artists.map((a) => a.name).join(','),
          style: kCaptionTextStyle,
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/icons/heart.svg',
          height: 20.sp,
          width: 24.sp,
        ),
        SizedBox(width: kSpacingUnit * 2),
        SvgPicture.asset(
          'assets/icons/play.svg',
          height: 24.sp,
          width: 24.sp,
        ),
        SizedBox(width: kSpacingUnit * 2),
      ],
    ),
  );
}
