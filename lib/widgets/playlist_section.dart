import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:spotify_ui_clone/constants.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/widgets/playlist_item.dart';

part 'playlist_section.g.dart';

@widget
Widget playlistSection(BuildContext context, {@required String title, @required List<Playlist> playlists}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
        child: Text(title, style: kHeadingTextStyle),
      ),
      SizedBox(height: kSpacingUnit * 2),
      Container(
        height: kSpacingUnit * 18,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: playlists.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                left: index == 0 ? kSpacingUnit * 2 : kSpacingUnit,
                right: index == playlists.length - 1 ? kSpacingUnit * 2 : kSpacingUnit,
              ),
              child: PlaylistItem(data: playlists[index]),
            );
          },
        ),
      ),
    ],
  );
}
