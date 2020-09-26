import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/helpers/page_routes.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/screens/playlist_detail/playlist_detail_screen.dart';
import 'package:spotify_ui_clone/widgets/shuffle_button.dart';

part 'playlist_item.g.dart';

@widget
Widget playlistItem(BuildContext context, {@required Playlist data}) {
  return GestureDetector(
    onTap: () {
      final route = SharedAxisPageRoute(
        page: PlaylistDetailScreen(data: data),
      );

      Navigator.of(context).push(route);
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          data.image,
          height: kSpacingUnit * 15,
          width: kSpacingUnit * 15,
        ),
        SizedBox(height: kSpacingUnit),
        Row(
          children: [
            if (data.shuffle) ...[
              ShuffleButton(),
              SizedBox(width: kSpacingUnit * 0.5),
            ],
            Text(data.title, style: kSubTitleTextStyle),
          ],
        ),
      ],
    ),
  );
}
