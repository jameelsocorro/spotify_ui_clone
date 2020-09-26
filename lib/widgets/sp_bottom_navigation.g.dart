// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sp_bottom_navigation.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SpBottomNavigation extends HookWidget {
  const SpBottomNavigation({Key key, this.songIsPlaying = false})
      : super(key: key);

  final bool songIsPlaying;

  @override
  Widget build(BuildContext _context) =>
      spBottomNavigation(_context, songIsPlaying: songIsPlaying);
}

class SpBottomNavigationItem extends StatelessWidget {
  const SpBottomNavigationItem(
      {Key key, this.title, this.icon, this.onTap, this.active})
      : super(key: key);

  final String title;

  final String icon;

  final Function onTap;

  final bool active;

  @override
  Widget build(BuildContext _context) => spBottomNavigationItem(_context,
      title: title, icon: icon, onTap: onTap, active: active);
}
