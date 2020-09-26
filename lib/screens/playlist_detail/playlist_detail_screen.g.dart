// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_detail_screen.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class PlaylistDetailScreen extends StatelessWidget {
  const PlaylistDetailScreen({Key key, this.data}) : super(key: key);

  final Playlist data;

  @override
  Widget build(BuildContext _context) =>
      playlistDetailScreen(_context, data: data);
}

class PlaylistDetailHeader extends StatelessWidget {
  const PlaylistDetailHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => playlistDetailHeader(_context);
}

class PlaylistDetailCoverImageSection extends StatelessWidget {
  const PlaylistDetailCoverImageSection({Key key, this.data}) : super(key: key);

  final Playlist data;

  @override
  Widget build(BuildContext _context) =>
      playlistDetailCoverImageSection(_context, data: data);
}

class PlaylistDetailSongs extends StatelessWidget {
  const PlaylistDetailSongs(
      {Key key, @required this.playlist, @required this.data})
      : super(key: key);

  final Playlist playlist;

  final List<Song> data;

  @override
  Widget build(BuildContext _context) =>
      playlistDetailSongs(_context, playlist: playlist, data: data);
}
