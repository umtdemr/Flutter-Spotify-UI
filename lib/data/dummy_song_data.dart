import 'package:spotify/data/dummy_singer_data.dart';
import 'package:spotify/data/models/singer_model.dart';
import 'package:spotify/data/models/song_model.dart';

class DummySongData {
  static SongModel dunyadanAtlasa = SongModel(
    name: "Dünya'dan Atlas'a",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b2735a450f30d86b5098e6d955a7",
    singer: DummySingerData.sehinsah,
    totalLength: 245,
    totalListened: 126345352,
    releasedDate: null,
  );
}
