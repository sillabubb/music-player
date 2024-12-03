import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:minimalist_music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
        lyrics:"""[Intro]
D
    Bm
(Oh-oh)
 
 
[Verse 1]
D
Don't have to tell your hot ass a thing
                   Bm
Oh, yeah, you just get it
      D
Whole package, babe, I like the way you fit
                       Bm
God bless your dad's genetics, mm, uh
 
 
[Pre-Chorus]
G            A              F#m     Bm
 You make me wanna make you fall in love
G            A                    F#m
 Oh, late at night, I'm thinking 'bout you
Bm      G
Ah, ah, ah
          A            F#m      Bm
Wanna try out my fuzzy pink handcuffs?
C
Oh, I hear you knockin', baby
A
 Come on up
 
 
[Chorus]
D                            Bm
I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm       D
 You make me wanna make you fall in love (Oh)
 
 
[Verse 2]
D
 I showed my friends, then we high-fived (Oh-oh)
Bm
  Sorry if you feel objеctified (Oh)
D
 Can't help myself, hormonеs are high
Bm
  Give me more than just some butterflies
 
 
[Pre-Chorus]
G            A              F#m     Bm
 You make me wanna make you fall in love (Ooh-ooh)
G            A                    F#m
 Oh, late at night, I'm thinking 'bout you
Bm      G
Ah, ah, ah
          A               F#m Bm
Wanna try out some freaky positions? (Ooh-ooh)
C A
  Have you ever tried this one?
 
 
[Chorus]
D                            Bm
I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm
 You make me wanna make you fall in love
 
 
[Bridge]
 D                       Bm
Adore me, hold me, and explore me
               G
Mark your territory (Ah-ah)
                A
Tell me I'm the only, only, only, only one
 D                               Bm
Adore me, hold me (Ah-ah), and explore me (Ooh)
               G
I'm so fuckin' horny
                A
Tell me I'm the only, only, only, only one
 
 
[Instrumental]
D Bm G A
D Bm G A
 
 
[Chorus]
    D                            Bm
Oh, I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might (Might)
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm
 You make me wanna make you fall in love""",),
    Song(
        songName: "Coverless Book",
        artistName: "My Audio Vision",
        albumArtImagePath: "assets/images/coverless_book.jpeg",
        audioPath: "audio/coverless_book.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Sad Soul",
        artistName: "Alex Grohl",
        albumArtImagePath: "assets/images/sad_soul.jpg",
        audioPath: "audio/sad_soul.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
    Song(
        songName: "Better Day",
        artistName: "Penguin Music",
        albumArtImagePath: "assets/images/better_day.jpg",
        audioPath: "audio/juno.mp3",
      lyrics: "Here comes the sun, and the day is bright...",),
  ];

  final List<Song> _favorites = []; // List to store favorite songs

  // Getters
  List<Song> get playlist => _playlist;
  List<Song> get favorites => _favorites; // Getter for favorites
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  // Toggle favorite status
  void toggleFavorite(Song song) {
    if (_favorites.contains(song)) {
      _favorites.remove(song);
    } else {
      _favorites.add(song);
    }
    notifyListeners();
  }

  // Check if a song is in favorites
  bool isFavorite(Song song) {
    return _favorites.contains(song);
  }

  int? _currentSongIndex;

  // Map to store notes for each song by its index
  final Map<int, String> _songNotes = {};

  // Get note for the current song
  String getNoteForCurrentSong() {
    if (_currentSongIndex == null) return "";
    return _songNotes[_currentSongIndex!] ?? "";
  }

  // Set note for the current song
  void setNoteForCurrentSong(String note) {
    if (_currentSongIndex != null) {
      _songNotes[_currentSongIndex!] = note;
      notifyListeners();
    }
  }

  void setCurrentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    if (newIndex != null) {
      play();
    }

    notifyListeners();
  }

  // Audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Durations
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  // Constructor
  PlaylistProvider() {
    listenToDuration();
  }

  bool _isPlaying = false;

  void play() async {
    final String audioPath = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(audioPath));
    _isPlaying = true;
    notifyListeners();
  }

  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }

    notifyListeners();
  }

  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  void playNextSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < playlist.length - 1) {
        setCurrentSongIndex(_currentSongIndex! + 1);
      } else {
        setCurrentSongIndex(0);
      }
    }
  }

  void playPreviousSong() async {
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    } else {
      if (_currentSongIndex! > 0) {
        setCurrentSongIndex(_currentSongIndex! - 1);
      } else {
        setCurrentSongIndex(playlist.length - 1);
      }
    }
  }

  void listenToDuration() {
    // Listen for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    // Listen for current duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    // Listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }
}
