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
  late final PlaylistProvider playlistProvider;
  int selectedSongIndex = -1;
  bool isPlaying = false;

  TextEditingController searchController = TextEditingController();
  List<Song> filteredSongs = []; // For storing filtered results

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
    filteredSongs = playlistProvider.playlist; // Initially show all songs
  }

  void goToSong(int index) {
    playlistProvider.setCurrentSongIndex(index);
    setState(() {
      selectedSongIndex = index;
      isPlaying = true;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SongPage()),
    );
  }

  void playPauseSong() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void goToNextSong() {
    setState(() {
      if (selectedSongIndex < playlistProvider.playlist.length - 1) {
        selectedSongIndex++;
        playlistProvider.setCurrentSongIndex(selectedSongIndex);
        isPlaying = true;
      }
    });
  }

  void goToPreviousSong() {
    setState(() {
      if (selectedSongIndex > 0) {
        selectedSongIndex--;
        playlistProvider.setCurrentSongIndex(selectedSongIndex);
        isPlaying = true;
      }
    });
  }

  // Filter songs based on the search query
  void filterSongs(String query) {
    final allSongs = playlistProvider.playlist;
    if (query.isEmpty) {
      setState(() {
        filteredSongs = allSongs;
      });
    } else {
      setState(() {
        filteredSongs = allSongs.where((song) {
          final songName = song.songName.toLowerCase();
          final artistName = song.artistName.toLowerCase();
          return songName.contains(query.toLowerCase()) ||
              artistName.contains(query.toLowerCase());
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        backgroundColor: theme.background,
        title: Text(
          " P L A Y L I S T ",
          style: TextStyle(color: theme.inversePrimary),
        ),
        elevation: 0,
        actions: [
          // Search Icon Button
          IconButton(
            icon: const Icon(Icons.search),
            color: theme.inversePrimary,
            onPressed: () {
              showSearchDialog(context);
            },
          ),
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: theme.primary,
        ),
        child: const MyDrawer(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<PlaylistProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: filteredSongs.length,
                  itemBuilder: (context, index) {
                    final Song song = filteredSongs[index];
                    final bool isSelected = playlistProvider.playlist.indexOf(song) == selectedSongIndex;

                    return GestureDetector(
                      onTap: () => goToSong(playlistProvider.playlist.indexOf(song)), // Navigate to SongPage
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? theme.secondary
                              : theme.primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          title: Text(
                            song.songName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: theme.inversePrimary,
                            ),
                          ),
                          subtitle: Text(
                            song.artistName,
                            style: TextStyle(
                              color: theme.inversePrimary.withOpacity(0.7),
                            ),
                          ),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              song.albumArtImagePath,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          if (selectedSongIndex != -1)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SongPage()),
                );
              },
              child: Container(
                color: theme.secondary.withOpacity(0.5),
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        playlistProvider.playlist[selectedSongIndex]
                            .albumArtImagePath,
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
                            playlistProvider
                                .playlist[selectedSongIndex].songName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: theme.inversePrimary,
                            ),
                          ),
                          Text(
                            playlistProvider
                                .playlist[selectedSongIndex].artistName,
                            style: TextStyle(
                              color: theme.inversePrimary.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_previous),
                      color: theme.inversePrimary,
                      onPressed: goToPreviousSong,
                    ),
                    IconButton(
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                      color: theme.inversePrimary,
                      onPressed: playPauseSong,
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_next),
                      color: theme.inversePrimary,
                      onPressed: goToNextSong,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Show search dialog
  void showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Search Songs"),
          content: TextField(
            controller: searchController,
            onChanged: (value) => filterSongs(value),
            decoration: const InputDecoration(
              hintText: "Search by song or artist...",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                searchController.clear();
                filterSongs(""); // Clear filter
                Navigator.pop(context);
              },
              child: const Text("Clear"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close search dialog
              },
              child: const Text("Done"),
            ),
          ],
        );
      },
    );
  }
}
