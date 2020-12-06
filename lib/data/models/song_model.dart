import 'package:flutter/foundation.dart';
import 'package:spotify/data/models/singer_model.dart';

class SongModel {
  final String name;
  final String posterUrl;
  final Singer singer;
  final int totalLength;
  final int totalListened;
  final String releasedDate;

  const SongModel(
      {@required this.name,
      @required this.posterUrl,
      @required this.singer,
      @required this.totalLength,
      @required this.totalListened,
      @required this.releasedDate});
}
