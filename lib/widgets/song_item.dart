import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/helpers/page_routes.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/models/song_model.dart';
import 'package:spotify_ui_clone/screens/song_detail/song_detail_screen.dart';

part 'song_item.g.dart';

@widget
Widget songItem(BuildContext context, {@required Playlist playlist, @required Song data}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      final route = SharedAxisPageRoute(
        page: SongDetailScreen(
          playlist: playlist,
          data: data,
        ),
      );

      Navigator.of(context).push(route);
    },
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 2,
        vertical: kSpacingUnit,
      ),
      child: Row(
        children: [
          Image.asset(
            data.image,
            height: kSpacingUnit * 5,
            width: kSpacingUnit * 5,
          ),
          SizedBox(width: kSpacingUnit),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  overflow: TextOverflow.ellipsis,
                  style: kBodyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: data.active ? kGreenColor : kTextColor,
                  ),
                ),
                Text(
                  data.artists.map((a) => a.name).join(', '),
                  overflow: TextOverflow.ellipsis,
                  style: kCaptionTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(width: kSpacingUnit * 2),
          SvgPicture.asset(
            'assets/icons/actions.svg',
            height: 20.sp,
            width: 20.sp,
          ),
        ],
      ),
    ),
  );
}
