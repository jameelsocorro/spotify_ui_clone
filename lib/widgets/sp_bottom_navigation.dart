import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/data/playlists.dart';
import 'package:spotify_ui_clone/widgets/playing_navigation.dart';

part 'sp_bottom_navigation.g.dart';

@hwidget
Widget spBottomNavigation(BuildContext context, {bool songIsPlaying = false}) {
  final currentIndex = useState(0);

  onTabChanged(index) {
    currentIndex.value = index;
  }

  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: Container(
      color: kBottomNavColor,
      child: Column(
        children: [
          if (songIsPlaying)
            PlayingNavigation(
              currentSong: defaultSong,
            ),
          Container(
            height: kSpacingUnit * 6,
            padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SpBottomNavigationItem(
                  title: 'Home',
                  icon: 'assets/icons/home.svg',
                  active: currentIndex.value == 0,
                  onTap: () => onTabChanged(0),
                ),
                SpBottomNavigationItem(
                  title: 'Search',
                  icon: 'assets/icons/search.svg',
                  active: currentIndex.value == 1,
                  onTap: () => onTabChanged(1),
                ),
                SpBottomNavigationItem(
                  title: 'Library',
                  icon: 'assets/icons/library.svg',
                  active: currentIndex.value == 2,
                  onTap: () => onTabChanged(2),
                ),
                SpBottomNavigationItem(
                  title: 'Premium',
                  icon: 'assets/icons/spotify.svg',
                  active: currentIndex.value == 3,
                  onTap: () => onTabChanged(3),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

@widget
Widget spBottomNavigationItem(BuildContext context, {String title, String icon, Function onTap, bool active}) {
  return Padding(
    padding: EdgeInsets.all(kSpacingUnit),
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 20.sp,
            width: 20.sp,
            color: active ? kTextColor : kSecondaryTextColor,
          ),
          SizedBox(height: 2.w),
          Text(
            title,
            style: kNavTitleTextStyle.copyWith(
              color: active ? kTextColor : kSecondaryTextColor,
            ),
          )
        ],
      ),
    ),
  );
}
