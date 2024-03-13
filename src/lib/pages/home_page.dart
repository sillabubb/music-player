import 'package:flutter/material.dart';
import 'package:minimalist_music_player/components/my_drawer.dart';
import 'package:minimalist_music_player/models/playlist_provider.dart';
import 'package:minimalist_music_player/models/song.dart';
import 'package:minimalist_music_player/pages/song_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
    //playlistProvider.loadPlaylist();
  }

  void goToSong(int index) {
    playlistProvider.setCurrentSongIndex(index);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SongPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          " P L A Y L I S T",
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        elevation: 0,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        child: const MyDrawer(),
      ),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          final List<Song> playlist = value.playlist;
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              final Song song = playlist[index];

              return ListTile(
                title: Text(song.songName,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
                subtitle: Text(
                  song.artistName,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Set the rounded corner radius here
                  child: Image.asset(
                    song.albumArtImagePath, // Replace with your image url
                    width: 100, // Set your width
                    height: 200, // Set your height
                    fit: BoxFit
                        .cover, // Use BoxFit.cover to keep the image aspect ratio
                  ),
                ),
                onTap: (() => goToSong(index)),
              );
            },
          );
        },
      ),
    );
  }
}
