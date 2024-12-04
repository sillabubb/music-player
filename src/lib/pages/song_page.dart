import 'package:flutter/material.dart';
import 'package:minimalist_music_player/components/neu_box.dart';
import 'package:minimalist_music_player/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  String formatTime(Duration duration) {
    String twoDigitSeconds =
    duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "${duration.inMinutes}:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, playlistProvider, child) {
        final playlist = playlistProvider.playlist;
        final currentSong = playlist[playlistProvider.currentSongIndex ?? 0];
        final isFavorite = playlistProvider.isFavorite(currentSong);

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
              child: SingleChildScrollView( // Wrap the Column inside SingleChildScrollView
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Header
                    const SizedBox(height: 25),
                    Container(
                      height: 25,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Back button
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color:
                                Theme.of(context).colorScheme.inversePrimary,
                              ),
                            ),
                          ),
                          // Title
                          Expanded(
                            child: Text(
                              "P L A Y L I S T",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.normal,
                                color:
                                Theme.of(context).colorScheme.inversePrimary,
                              ),
                            ),
                          ),
                          // Menu button
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                size: 30,
                                color:
                                Theme.of(context).colorScheme.inversePrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    // Album artwork
                    NeuBox(
                      child: Column(
                        children: [
                          // Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(currentSong.albumArtImagePath),
                          ),
                          // Song and artist name with notes and favorites
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Song and artist details
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
                                            .inversePrimary,
                                      ),
                                    ),
                                    Text(
                                      currentSong.artistName,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary,
                                      ),
                                    ),
                                  ],
                                ),

                                // Center Notes if they exist
                                if (playlistProvider
                                    .getNoteForCurrentSong()
                                    .isNotEmpty) ...[
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Note:",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          playlistProvider.getNoteForCurrentSong(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],

                                // Favorites icon
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: isFavorite ? Colors.red : Colors.grey,
                                  ),
                                  onPressed: () {
                                    playlistProvider.toggleFavorite(currentSong);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    // Song duration progress and controls
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Start time
                              Text(
                                formatTime(playlistProvider.currentDuration),
                                style: TextStyle(
                                  color:
                                  Theme.of(context).colorScheme.inversePrimary,
                                ),
                              ),
                              // Notes button
                              IconButton(
                                icon: Icon(
                                  Icons.note_add,
                                  color:
                                  Theme.of(context).colorScheme.inversePrimary,
                                ),
                                onPressed: () {
                                  // Show dialog to add/edit notes
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      final TextEditingController noteController =
                                      TextEditingController(
                                        text: playlistProvider
                                            .getNoteForCurrentSong(),
                                      );
                                      return AlertDialog(
                                        title: const Text('Add Note'),
                                        content: TextField(
                                          controller: noteController,
                                          maxLines: 4,
                                          decoration: const InputDecoration(
                                            hintText: 'Enter your note here...',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context); // Close dialog
                                            },
                                            child: const Text('Cancel'),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              playlistProvider.setNoteForCurrentSong(
                                                  noteController.text);
                                              Navigator.pop(context); // Save and close
                                            },
                                            child: const Text('Save'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                              // Lyrics button
                              IconButton(
                                icon: Icon(
                                  Icons.music_note_outlined,
                                  color:
                                  Theme.of(context).colorScheme.inversePrimary,
                                ),
                                onPressed: () {
                                  // Show lyrics dialog
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                          'Lyrics for ${currentSong.songName}'),
                                      content: SingleChildScrollView( // Automatically scrolls when content exceeds dialog height
                                        child: Text(
                                          currentSong.lyrics,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Close'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              // End time
                              Text(
                                formatTime(playlistProvider.totalDuration),
                                style: TextStyle(
                                  color:
                                  Theme.of(context).colorScheme.inversePrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0,
                            ),
                          ),
                          child: Slider(
                            min: 0,
                            max: playlistProvider.totalDuration.inSeconds
                                .toDouble(),
                            value: playlistProvider.currentDuration.inSeconds
                                .toDouble(),
                            activeColor: Colors.green,
                            onChanged: (value) {},
                            onChangeEnd: (value) {
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
                                  child: Icon(
                                    Icons.skip_previous,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            // Play/pause
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
                                        .inversePrimary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            // Skip forward
                            Expanded(
                              child: GestureDetector(
                                onTap: playlistProvider.playNextSong,
                                child: NeuBox(
                                  child: Icon(
                                    Icons.skip_next,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
