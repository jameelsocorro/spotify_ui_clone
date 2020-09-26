import 'package:spotify_ui_clone/models/artist_model.dart';

class Song {
  final String title;
  final String image;
  final List<Artist> artists;
  final bool active;

  Song({this.title, this.image, this.artists, this.active = false});
}
