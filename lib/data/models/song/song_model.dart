import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify/domain/entities/song/song.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDate;
  bool? isFavorite;
  String? songId;
  String? url;

  SongModel(
      {required this.title,
      required this.artist,
      required this.duration,
      required this.releaseDate,
      required this.isFavorite,
      required this.songId,
      required this.url});

  SongModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    url = data['url'];
  }
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
        title: title!,
        artist: artist!,
        duration: duration!,
        releaseDate: releaseDate!,
        isFavorite: isFavorite!,
        songId: songId!,
        url: url!);
  }
}