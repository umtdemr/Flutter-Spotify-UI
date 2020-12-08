import 'package:spotify/data/dummy_singer_data.dart';
import 'package:spotify/data/models/singer_model.dart';
import 'package:spotify/data/models/song_model.dart';
import 'dummy_song_data.dart';

class DummyData {
  List<SongModel> lastSixSongs = [
    DummySongData.dunyadanAtlasa,
    DummySongData.firstClass,
    DummySongData.dunyaninSonunaDogmusum,
    DummySongData.imza,
    DummySongData.someHow,
    DummySongData.dursunZaman,
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
