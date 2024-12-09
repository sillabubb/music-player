import 'package:flutter/material.dart';
import 'package:minimalist_music_player/models/playlist_provider.dart';
import 'package:minimalist_music_player/pages/song_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        title: Center(
            child: Text("F A V O R I T E S" + "         ")),
        iconTheme: IconThemeData(color: theme.inversePrimary),
        titleTextStyle: TextStyle(
          color: theme.inversePrimary,
          fontSize: 20,
        ),
      ),
      backgroundColor: theme.background,
      body: Column(
        children: [
          Expanded(
            child: Consumer<PlaylistProvider>(
              builder: (context, playlistProvider, child) {
                final favorites = playlistProvider.favorites;

                if (favorites.isEmpty) {
                  return Center(
                    child: Text(
                      "No favorites yet.",
                      style: TextStyle(
                        color: theme.inversePrimary.withOpacity(0.7),
                        fontSize: 16.0,
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final song = favorites[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: theme.primary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(song.albumArtImagePath, width: 50),
                        ),
                        title: Text(
                          song.songName,
                          style: TextStyle(
                            color: theme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          song.artistName,
                          style: TextStyle(
                            color: theme.inversePrimary.withOpacity(0.7),
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.favorite),
                          color: Colors.red,
                          onPressed: () {
                            playlistProvider.toggleFavorite(song);
                          },
                        ),
                        onTap: () {
                          // Set the current song and navigate to SongPage
                          playlistProvider.setCurrentSongIndex(
                              playlistProvider.playlist.indexOf(song));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SongPage()),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),

          // Updated Currently Playing Song View
          Consumer<PlaylistProvider>(
            builder: (context, playlistProvider, child) {
              final currentSongIndex = playlistProvider.currentSongIndex;

              if (currentSongIndex == null) {
                return const SizedBox(); // Hide if no song is playing
              }

              final currentSong =
              playlistProvider.playlist[currentSongIndex];

              return GestureDetector(
                onTap: () {
                  // Navigate to the SongPage for the currently playing song
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SongPage()),
                  );
                },
                child: Container(
                  color: theme.secondary.withOpacity(0.5),
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              currentSong.albumArtImagePath,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentSong.songName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: theme.inversePrimary,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  currentSong.artistName,
                                  style: TextStyle(
                                    color:
                                    theme.inversePrimary.withOpacity(0.7),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_previous),
                            color: theme.inversePrimary,
                            onPressed: () {
                              playlistProvider.playPreviousSong();
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              playlistProvider.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                            ),
                            color: theme.inversePrimary,
                            onPressed: playlistProvider.pauseOrResume,
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_next),
                            color: theme.inversePrimary,
                            onPressed: () {
                              playlistProvider.playNextSong();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
