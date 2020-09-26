// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => homeScreen(_context);
}

class HomePreferredPlaylistSection extends StatelessWidget {
  const HomePreferredPlaylistSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => homePreferredPlaylistSection(_context);
}

class HomeUserPlaylist extends StatelessWidget {
  const HomeUserPlaylist({Key key, @required this.playlist}) : super(key: key);

  final List<Playlist> playlist;

  @override
  Widget build(BuildContext _context) =>
      homeUserPlaylist(_context, playlist: playlist);
}
