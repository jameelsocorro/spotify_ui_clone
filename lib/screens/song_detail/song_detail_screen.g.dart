// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_detail_screen.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SongDetailScreen extends StatelessWidget {
  const SongDetailScreen(
      {Key key, @required this.playlist, @required this.data})
      : super(key: key);

  final Playlist playlist;

  final Song data;

  @override
  Widget build(BuildContext _context) =>
      songDetailScreen(_context, playlist: playlist, data: data);
}

class SongDetailHeader extends StatelessWidget {
  const SongDetailHeader({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext _context) =>
      songDetailHeader(_context, title: title);
}

class SongDetailCoverImage extends StatelessWidget {
  const SongDetailCoverImage({Key key, @required this.data}) : super(key: key);

  final Song data;

  @override
  Widget build(BuildContext _context) =>
      songDetailCoverImage(_context, data: data);
}

class SongDetailControls extends StatelessWidget {
  const SongDetailControls({Key key, @required this.data}) : super(key: key);

  final Song data;

  @override
  Widget build(BuildContext _context) =>
      songDetailControls(_context, data: data);
}
