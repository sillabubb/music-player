import 'dart:convert';

class Song {
  final String songName;
  final String artistName;
  final String albumArtImagePath;
  final String audioPath;
  final String lyrics;

  Song({
    required this.songName,
    required this.artistName,
    required this.albumArtImagePath,
    required this.audioPath,
    required this.lyrics,
  });
  Song copyWith({
    String? songName,
    String? artistName,
    String? albumArtImagePath,
    String? audioPath,
    String? lyrics,
  }) {
    return Song(
      songName: songName ?? this.songName,
      artistName: artistName ?? this.artistName,
      albumArtImagePath: albumArtImagePath ?? this.albumArtImagePath,
      audioPath: audioPath ?? this.audioPath,
      lyrics: lyrics ?? this.lyrics,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'songName': songName,
      'artistName': artistName,
      'albumArtImagePath': albumArtImagePath,
      'audioPath': audioPath,
      'lyrics': lyrics,
    };
  }
  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      songName: map['songName'],
      artistName: map['artistName'],
      albumArtImagePath: map['albumArtImagePath'],
      audioPath: map['audioPath'],
      lyrics: map['lyrics'],
    );
  }
  String toJson() => json.encode(toMap());
  factory Song.fromJson(String source) => Song.fromMap(json.decode(source));
  @override
  String toString() {
    return 'Song(songName: $songName, artistName: $artistName, albumArtImagePath: $albumArtImagePath, audioPath: $audioPath, lyrics: $lyrics)';
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Song &&
      other.songName == songName &&
      other.artistName == artistName &&
      other.albumArtImagePath == albumArtImagePath &&
      other.audioPath == audioPath &&
      other.lyrics == lyrics;
  }
  @override
  int get hashCode {
    return songName.hashCode ^
      artistName.hashCode ^
      albumArtImagePath.hashCode ^
      audioPath.hashCode ^
      lyrics.hashCode;
  }
}