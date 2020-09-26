import 'package:spotify_ui_clone/models/artist_model.dart';
import 'package:spotify_ui_clone/models/playlist_model.dart';
import 'package:spotify_ui_clone/models/song_model.dart';

final defaultSong = Song(
  title: 'memories of her, last winter',
  image: 'assets/images/4.jpg',
  artists: [
    Artist(name: 'Rook1e'),
  ],
);

final userLeftPlaylistData = [
  Playlist(
    title: 'Place in the sun',
    image: 'assets/images/1.jpg',
    shuffle: true,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Causeway Trends',
    image: 'assets/images/2.jpg',
    shuffle: true,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Light & Easy',
    image: 'assets/images/4.jpg',
    shuffle: true,
    likes: '2.5M',
    songs: [defaultSong],
  ),
];

final userRightPlaylistData = [
  Playlist(
    title: 'Lo-Fi Beats',
    image: 'assets/images/8.jpg',
    shuffle: false,
    likes: '3.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Alone Again',
    image: 'assets/images/3.jpg',
    shuffle: true,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'LUSH LOFI',
    image: 'assets/images/6.jpg',
    shuffle: false,
    likes: '2.5M',
    songs: [defaultSong],
  ),
];

final recentlyPlayed = [
  Playlist(
    title: 'Lo-Fi Beats',
    image: 'assets/images/8.jpg',
    shuffle: false,
    likes: '3.5M',
    songs: [
      Song(
        active: true,
        title: 'memories of her, last winter',
        image: 'assets/images/4.jpg',
        artists: [
          Artist(name: 'Rook1e'),
          Artist(name: 'softy'),
        ],
      ),
      Song(
        title: 'Lullabyes',
        image: 'assets/images/10.jpg',
        artists: [
          Artist(name: 'Aviscerall'),
        ],
      ),
      Song(
        title: 'Walking in the Rain to a Cafe to Write Down Private Thoughts in Public',
        image: 'assets/images/5.jpg',
        artists: [
          Artist(name: 'City Girl'),
        ],
      ),
      Song(
        title: 'Now That You’re Gone',
        image: 'assets/images/7.jpg',
        artists: [
          Artist(name: 'Kavv'),
        ],
      ),
      Song(
        title: 'Quitted Hills',
        image: 'assets/images/15.jpg',
        artists: [
          Artist(name: 'ocha'),
          Artist(name: 'Laffey'),
        ],
      ),
    ],
  ),
  Playlist(
    title: 'Beast Mode',
    image: 'assets/images/14.jpg',
    shuffle: true,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Work From Home',
    image: 'assets/images/13.jpg',
    shuffle: false,
    likes: '2.5M',
    songs: [defaultSong],
  ),
];

final jumpBackIn = [
  Playlist(
    title: 'Happy Hits',
    image: 'assets/images/11.jpg',
    shuffle: false,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Confidence Boost',
    image: 'assets/images/12.jpg',
    shuffle: false,
    likes: '2.5M',
    songs: [defaultSong],
  ),
  Playlist(
    title: 'Jazz Hits',
    image: 'assets/images/9.jpg',
    shuffle: false,
    likes: '2.5M',
    songs: [defaultSong],
  ),
];
