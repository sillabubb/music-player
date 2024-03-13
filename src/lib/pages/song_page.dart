import 'package:flutter/material.dart';
import 'package:minimalist_music_player/components/neu_box.dart';
import 'package:minimalist_music_player/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  String formatTime(Duration duration) {
    String twoDigitSeconds =
        duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    String formattedTime = "${duration.inMinutes}:$twoDigitSeconds";

    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
        builder: (context, playlistProvider, child) {
      final playlist = playlistProvider.playlist;

      final currentSong = playlist[playlistProvider.currentSongIndex ?? 0];

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),

                    // Title
                    Text(" P L A Y L I S T ",
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)),

                    // Menu button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Album art work
                NeuBox(
                  child: Column(
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(currentSong.albumArtImagePath),
                      ),

                      // Song and artist name
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentSong.songName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary),
                                ),
                                Text(currentSong.artistName,
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary)),
                              ],
                            ),

                            // Heart icon
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25.0,
                ),

                // Song duration progress
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Start time
                          Text(formatTime(playlistProvider.currentDuration),
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary)),

                          // Shuffle icon
                          Icon(Icons.shuffle,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),

                          // Repeat icon
                          Icon(Icons.repeat,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),

                          // End time
                          Text(formatTime(playlistProvider.totalDuration),
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary)),
                        ],
                      ),
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 0),
                      ),
                      child: Slider(
                        min: 0,
                        max:
                            playlistProvider.totalDuration.inSeconds.toDouble(),
                        value: playlistProvider.currentDuration.inSeconds
                            .toDouble(),
                        activeColor: Colors.green,
                        onChanged: (value) {
                          // During when the user is sliding around
                        },
                        onChangeEnd: (value) {
                          // Sliding has finished, go to that position in song duration
                          playlistProvider
                              .seek(Duration(seconds: value.toInt()));
                        },
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    Row(
                      children: [
                        // Skip previous
                        Expanded(
                          child: GestureDetector(
                            onTap: playlistProvider.playPreviousSong,
                            child: NeuBox(
                              child: Icon(Icons.skip_previous,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                            ),
                          ),
                        ),

                        const SizedBox(width: 20.0),

                        // Play pause
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: playlistProvider.pauseOrResume,
                            child: NeuBox(
                              child: Icon(
                                  playlistProvider.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                            ),
                          ),
                        ),

                        const SizedBox(width: 20.0),

                        // Skip forward
                        Expanded(
                          child: GestureDetector(
                            onTap: playlistProvider.playNextSong,
                            child: NeuBox(
                              child: Icon(Icons.skip_next,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
