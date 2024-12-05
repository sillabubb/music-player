import 'package:flutter/material.dart';
import 'package:minimalist_music_player/components/neu_box.dart';
import 'package:minimalist_music_player/models/playlist_provider.dart';
import 'package:provider/provider.dart';
import 'dart:async';

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
              padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
              child: SingleChildScrollView(
                // Wrap the Column inside SingleChildScrollView
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Header
                    const SizedBox(height: 25),
                    Container(
                      height: 25,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20.0),
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                            ),
                          ),
                          // Menu button with PopupMenuButton
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: PopupMenuButton<String>(
                              icon: Icon(
                                Icons.menu,
                                size: 30,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                              onSelected: (value) {
                                if (value == 'add_to_favorites') {
                                  playlistProvider.toggleFavorite(currentSong);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '${currentSong.songName} added to favorites!',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.green,
                                      duration: const Duration(seconds: 2),
                                    ),
                                  );
                                }
                              },
                              itemBuilder: (context) => [
                                const PopupMenuItem<String>(
                                  value: 'add_to_favorites',
                                  child: Text('Add to Favorites'),
                                ),
                              ],
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
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Song and artist details
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
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

                                // Favorites icon
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: isFavorite ? Colors.red : Colors.grey,
                                  ),
                                  onPressed: () {
                                    playlistProvider.toggleFavorite(currentSong);

                                    // Determine the message based on the current favorite status
                                    final String message = isFavorite
                                        ? '${currentSong.songName} removed from favorites!'
                                        : '${currentSong.songName} added to favorites!';

                                    // Show a SnackBar with the appropriate message
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          message,
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: isFavorite ? Colors.red : Colors.green,
                                        duration: const Duration(seconds: 2),
                                      ),
                                    );
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              // Start time
                              Text(
                                formatTime(
                                    playlistProvider.currentDuration),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              // Notes button
                              IconButton(
                                icon: Icon(
                                  playlistProvider.getNoteForCurrentSong().isNotEmpty
                                      ? Icons.note_rounded
                                      : Icons.note_add,
                                  color: Theme.of(context).colorScheme.inversePrimary,
                                ),
                                onPressed: () {
                                  final TextEditingController noteController = TextEditingController(
                                    text: playlistProvider.getNoteForCurrentSong(),
                                  );

                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          playlistProvider.getNoteForCurrentSong().isNotEmpty
                                              ? 'Saved Notes'
                                              : 'Add Note',
                                        ),
                                        content: TextField(
                                          controller: noteController,
                                          maxLines: 4,
                                          readOnly: playlistProvider.getNoteForCurrentSong().isNotEmpty, // Read-only if note exists
                                          decoration: const InputDecoration(
                                            hintText: 'Enter your note here...',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        actions: [
                                          if (playlistProvider.getNoteForCurrentSong().isNotEmpty)
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context); // Close current dialog
                                                // Open a new dialog to edit the note
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: const Text('Edit Note'),
                                                      content: TextField(
                                                        controller: noteController,
                                                        maxLines: 4,
                                                        decoration: const InputDecoration(
                                                          hintText: 'Edit your note here...',
                                                          border: OutlineInputBorder(),
                                                        ),
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(context); // Close edit dialog
                                                          },
                                                          child: const Text('Cancel'),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            playlistProvider.setNoteForCurrentSong(noteController.text);
                                                            Navigator.pop(context); // Save and close edit dialog
                                                          },
                                                          child: const Text('Save Edited Note'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              child: const Text('Edit Note'),
                                            ),
                                          if (playlistProvider.getNoteForCurrentSong().isEmpty)
                                            ElevatedButton(
                                              onPressed: () {
                                                playlistProvider.setNoteForCurrentSong(noteController.text);
                                                Navigator.pop(context); // Save and close
                                              },
                                              child: const Text('Save'),
                                            ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context); // Close dialog
                                            },
                                            child: const Text('Close'),
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
                                  color: Theme.of(context).colorScheme.inversePrimary,
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      final ScrollController scrollController = ScrollController();
                                      bool isAutoScrolling = false;
                                      Timer? autoScrollTimer;

                                      void startAutoScroll() {
                                        autoScrollTimer = Timer.periodic(const Duration(milliseconds: 50), (_) {
                                          if (scrollController.position.pixels <
                                              scrollController.position.maxScrollExtent) {
                                            scrollController.animateTo(
                                              scrollController.position.pixels + 1, // Adjust speed here
                                              duration: const Duration(milliseconds: 50),
                                              curve: Curves.linear,
                                            );
                                          } else {
                                            autoScrollTimer?.cancel();
                                          }
                                        });
                                      }

                                      void stopAutoScroll() {
                                        autoScrollTimer?.cancel();
                                      }

                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return AlertDialog(
                                            title: Text('${currentSong.songName}'),
                                            content: SingleChildScrollView(
                                              controller: scrollController,
                                              child: Text(
                                                currentSong.lyrics,
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.inversePrimary,
                                                ),
                                              ),
                                            ),
                                            actions: [
                                              IconButton(
                                                icon: Icon(
                                                  isAutoScrolling
                                                      ? Icons.pause_circle_filled
                                                      : Icons.play_circle_filled,
                                                  color: Theme.of(context).colorScheme.inversePrimary,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    if (isAutoScrolling) {
                                                      stopAutoScroll();
                                                    } else {
                                                      startAutoScroll();
                                                    }
                                                    isAutoScrolling = !isAutoScrolling;
                                                  });
                                                },
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: const Text('Close'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),

                              // End time
                              Text(
                                formatTime(
                                    playlistProvider.totalDuration),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                            const RoundSliderThumbShape(
                              enabledThumbRadius: 0,
                            ),
                          ),
                          child: Slider(
                            min: 0,
                            max: playlistProvider
                                .totalDuration.inSeconds
                                .toDouble(),
                            value: playlistProvider
                                .currentDuration.inSeconds
                                .toDouble(),
                            activeColor: Colors.green,
                            onChanged: (value) {},
                            onChangeEnd: (value) {
                              playlistProvider.seek(Duration(
                                  seconds: value.toInt()));
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
