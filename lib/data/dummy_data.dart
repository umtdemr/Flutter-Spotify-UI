import 'package:spotify/data/dummy_singer_data.dart';
import 'package:spotify/data/models/singer_model.dart';
import 'package:spotify/data/models/song_model.dart';
import 'dummy_song_data.dart';

class DummyData {
  List<SongModel> lastSixSongs = [
    DummySongData.dunyadanAtlasa,
    DummySongData.firstClass,
    DummySongData.godzilla,
    DummySongData.tillICollapse,
    DummySongData.imza,
    DummySongData.dursunZaman,
  ];
  List<SongModel> recentlyPlayed = [
    DummySongData.badGuy,
    DummySongData.poverOverMe,
    DummySongData.someHow,
    DummySongData.dursunZaman,
    DummySongData.karma,
    DummySongData.withoutMe,
    DummySongData.thereforeIAm,
    DummySongData.badGuy,
    DummySongData.firstClass,
  ];

  List<Singer> popularSinger = [
    DummySingerData.adamlar,
    DummySingerData.tomOdell,
    DummySingerData.manga,
    DummySingerData.acdc,
    DummySingerData.eminem,
    DummySingerData.ceg,
  ];

  List<SongModel> sehinsahSongs = [
    DummySongData.dunyadanAtlasa,
    DummySongData.karma,
    DummySongData.kunteper,
    DummySongData.yakyak,
    DummySongData.dilemma,
  ];
}
