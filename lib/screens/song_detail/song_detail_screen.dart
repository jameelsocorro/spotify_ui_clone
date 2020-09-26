import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/models/song_model.dart';
import 'package:spotify_ui_clone/widgets/song_controller.dart';
import 'package:spotify_ui_clone/widgets/sp_slider.dart';

part 'song_detail_screen.g.dart';

@widget
Widget songDetailScreen(BuildContext context, {@required Playlist playlist, @required Song data}) {
  return Scaffold(
    backgroundColor: kBlackColor,
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 0.8),
            colors: [
              const Color.fromRGBO(181, 220, 227, 0.6),
              const Color.fromRGBO(181, 220, 227, 0),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SongDetailHeader(title: playlist.title),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: kSpacingUnit * 2),
                    SongDetailCoverImage(data: data),
                    SizedBox(height: kSpacingUnit * 2),
                    SongDetailControls(data: data),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

@widget
Widget songDetailHeader(BuildContext context, {String title}) {
  return Padding(
    padding: EdgeInsets.all(kSpacingUnit * 2),
    child: Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: SvgPicture.asset(
            'assets/icons/down_chevron.svg',
            height: 10.sp,
            width: 10.sp,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'PLAYING FROM PLAYLIST',
                style: kCaptionTextStyle.copyWith(
                  color: kTextColor,
                ),
              ),
              Text(
                title,
                style: kBodyTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          'assets/icons/actions.svg',
          height: 20.sp,
          width: 20.sp,
        ),
      ],
    ),
  );
}

@widget
Widget songDetailCoverImage(BuildContext context, {@required Song data}) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: kSpacingUnit * 3,
    ),
    child: AspectRatio(
      aspectRatio: 1 / 1,
      child: Image(
        image: AssetImage(data.image),
        fit: BoxFit.contain, // use this
      ),
    ),
  );
}

@widget
Widget songDetailControls(BuildContext context, {@required Song data}) {
  return Container(
    padding: EdgeInsets.all(kSpacingUnit * 3),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.title,
          style: kSubTitleTextStyle,
        ),
        Text(
          data.artists.map((a) => a.name).join(', '),
          style: kBodyTextStyle.copyWith(
            color: kSecondaryTextColor,
          ),
        ),
        SizedBox(height: kSpacingUnit * 3),
        SpSlider(value: 30),
        SizedBox(height: kSpacingUnit * 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/icons/heart.svg',
              height: 18.sp,
              width: 18.sp,
            ),
            Expanded(
              child: SongController(),
            ),
            SvgPicture.asset(
              'assets/icons/minus_circle.svg',
              height: 20.sp,
              width: 20.sp,
            ),
          ],
        ),
        SizedBox(height: kSpacingUnit * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/icons/devices.svg',
              height: 18.sp,
              width: 18.sp,
              color: kSecondaryTextColor,
            ),
            SvgPicture.asset(
              'assets/icons/share.svg',
              height: 18.sp,
              width: 18.sp,
            ),
          ],
        ),
      ],
    ),
  );
}
