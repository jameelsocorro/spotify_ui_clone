import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/helpers/page_routes.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/screens/playlist_detail/playlist_detail_screen.dart';
import 'package:spotify_ui_clone/widgets/shuffle_button.dart';

part 'user_playlist_item.g.dart';

@widget
Widget userPlaylistItem(BuildContext context, {@required Playlist data}) {
  return GestureDetector(
    onTap: () {
      final route = SharedAxisPageRoute(
        page: PlaylistDetailScreen(data: data),
      );

      Navigator.of(context).push(route);
    },
    child: Container(
      margin: EdgeInsets.all(kSpacingUnit * 0.5),
      height: kSpacingUnit * 6,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.w),
        child: Container(
          decoration: BoxDecoration(
            color: kDarkGreyColor,
          ),
          child: Row(
            children: [
              Image.asset(
                data.image,
                height: kSpacingUnit * 6,
                width: kSpacingUnit * 6,
              ),
              SizedBox(width: kSpacingUnit),
              Expanded(
                child: Text(
                  data.title,
                  style: kSubTitleTextStyle,
                  softWrap: true,
                ),
              ),
              SizedBox(width: kSpacingUnit),
              if (data.shuffle) ...[
                ShuffleButton(),
                SizedBox(width: kSpacingUnit),
              ]
            ],
          ),
        ),
      ),
    ),
  );
}
