import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/models/song_model.dart';
import 'package:spotify_ui_clone/widgets/song_item.dart';
import 'package:spotify_ui_clone/widgets/sp_bottom_navigation.dart';
import 'package:spotify_ui_clone/widgets/sp_button.dart';

part 'playlist_detail_screen.g.dart';

@widget
Widget playlistDetailScreen(BuildContext context, {Playlist data}) {
  return Scaffold(
    backgroundColor: kBlackColor,
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 0.2),
            colors: [
              const Color(0xFF4A7BA1),
              const Color.fromRGBO(158, 196, 209, 0),
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                PlaylistDetailHeader(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: kSpacingUnit * 5),
                        PlaylistDetailCoverImageSection(data: data),
                        SizedBox(height: kSpacingUnit * 2),
                        PlaylistDetailSongs(playlist: data, data: data.songs),
                        SizedBox(height: kSpacingUnit * 17),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SpBottomNavigation(songIsPlaying: true),
          ],
        ),
      ),
    ),
  );
}

@widget
Widget playlistDetailHeader(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(kSpacingUnit * 2),
    child: Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: SvgPicture.asset(
            'assets/icons/arrow_left.svg',
            height: 20.sp,
            width: 20.sp,
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/icons/heart.svg',
          height: 20.sp,
          width: 20.sp,
        ),
        SizedBox(width: kSpacingUnit * 2),
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
Widget playlistDetailCoverImageSection(BuildContext context, {Playlist data}) {
  return Column(
    children: [
      Image.asset(
        data.image,
        height: kSpacingUnit * 22,
        width: kSpacingUnit * 22,
      ),
      SizedBox(height: kSpacingUnit * 3),
      Text(
        data.title,
        style: kHeadingTextStyle,
      ),
      SizedBox(height: kSpacingUnit),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BY SPOTIFY',
            style: kCaptionTextStyle.copyWith(
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
            '${data.likes} LIKES',
            style: kCaptionTextStyle.copyWith(
              color: kTextColor,
            ),
          ),
        ],
      ),
      SizedBox(height: kSpacingUnit),
      SpButton(title: 'PLAY'),
    ],
  );
}

@widget
Widget playlistDetailSongs(BuildContext context, {@required Playlist playlist, @required List<Song> data}) {
  return Column(
    children: data
        .map((song) => SongItem(
              playlist: playlist,
              data: song,
            ))
        .toList(),
  );
}
