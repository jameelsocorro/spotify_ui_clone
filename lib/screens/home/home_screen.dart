import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/data/playlists.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/widgets/playlist_section.dart';
import 'package:spotify_ui_clone/widgets/sp_bottom_navigation.dart';
import 'package:spotify_ui_clone/widgets/user_playlist_item.dart';

part 'home_screen.g.dart';

@widget
Widget homeScreen(BuildContext context) {
  ScreenUtil.init(designSize: Size(414, 896), allowFontScaling: true);

  return Scaffold(
    backgroundColor: kBlackColor,
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.0, -0.5),
            colors: [
              const Color.fromRGBO(235, 238, 227, 0.3),
              const Color.fromRGBO(255, 255, 255, 0),
            ],
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: kSpacingUnit * 2),
                  Container(
                    margin: EdgeInsets.only(right: kSpacingUnit * 2),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        'assets/icons/gear.svg',
                        height: 24.sp,
                        width: 24.sp,
                      ),
                    ),
                  ),
                  HomePreferredPlaylistSection(),
                  PlaylistSection(
                    title: 'Recenty Played',
                    playlists: recentlyPlayed,
                  ),
                  SizedBox(height: kSpacingUnit * 5),
                  PlaylistSection(
                    title: 'Jump back in',
                    playlists: jumpBackIn,
                  ),
                  SizedBox(height: kSpacingUnit * 17),
                ],
              ),
            ),
            SpBottomNavigation(songIsPlaying: true),
          ],
        ),
      ),
    ),
  );
}

@widget
Widget homePreferredPlaylistSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: kSpacingUnit * 2),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
        child: Text('Good evening', style: kHeadingTextStyle),
      ),
      SizedBox(height: kSpacingUnit * 1.5),
      Container(
        margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 1.5),
        child: Row(
          children: [
            HomeUserPlaylist(playlist: userLeftPlaylistData),
            HomeUserPlaylist(playlist: userRightPlaylistData),
          ],
        ),
      ),
      SizedBox(height: kSpacingUnit * 4.5),
    ],
  );
}

@widget
Widget homeUserPlaylist(BuildContext context, {@required List<Playlist> playlist}) {
  return Expanded(
    child: Column(
      children: playlist.map((item) => UserPlaylistItem(data: item)).toList(),
    ),
  );
}
