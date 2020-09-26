import 'package:spotify_ui_clone/models/song_model.dart';

class Playlist {
  final String title;
  final String image;
  final bool shuffle;
  final String likes;
  final List<Song> songs;

  Playlist({this.title, this.image, this.shuffle, this.likes, this.songs});
}
