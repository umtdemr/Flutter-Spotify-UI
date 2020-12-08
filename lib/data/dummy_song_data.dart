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
    releasedDate: "19 haziran 2019",
  );

  static SongModel karma = SongModel(
    name: "Karma",
    posterUrl:
        "https://i.scdn.co/image/ab67616d00001e027f6534cbc4b25f98e90e11ef",
    singer: DummySingerData.sehinsah,
    totalLength: 312,
    totalListened: 276345352,
    releasedDate: "22 kasım 2017",
  );
  static SongModel kunteper = SongModel(
    name: "Kunteper",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b27325b859e37a4205c7242500d0",
    singer: DummySingerData.sehinsah,
    totalLength: 312,
    totalListened: 6345352,
    releasedDate: "29 kasım 2020",
  );
  static SongModel yakyak = SongModel(
    name: "Yak Yak Yak",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b27385d9ed7293cb8635d17e1bf7",
    singer: DummySingerData.sehinsah,
    totalLength: 312,
    totalListened: 6345352,
    releasedDate: "29 kasım 2018",
  );
  static SongModel imza = SongModel(
    name: "İmza",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b273b6ba03b960342883e2147f27",
    singer: DummySingerData.sehinsah,
    totalLength: 312,
    totalListened: 6345352,
    releasedDate: "29 kasım 2018",
  );
  static SongModel dilemma = SongModel(
    name: "Dilemma",
    posterUrl:
        "https://i.scdn.co/image/ab67616d00001e02782329fcc4147cb8d65d5433",
    singer: DummySingerData.sehinsah,
    totalLength: 312,
    totalListened: 6345352,
    releasedDate: "29 ocak 2021",
  );

  static SongModel firstClass = SongModel(
    name: "First Class",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b273ed3a2fd77c946e5c9e7d2b8a",
    singer: DummySingerData.ceg,
    totalLength: 206,
    totalListened: 3000000,
    releasedDate: "25 kasım 2020",
  );
  static SongModel someHow = SongModel(
    name: "Somehow",
    posterUrl:
        "https://i.scdn.co/image/ab67616d0000b273dc53069e4f4d2ba5b6b707a8",
    singer: DummySingerData.tomOdell,
    totalLength: 401,
    totalListened: 5031520,
    releasedDate: "16 şubat 2000",
  );

  static SongModel dursunZaman = SongModel(
    name: "Dursun Zaman (feat. Göksel)",
    posterUrl:
        "https://i.scdn.co/image/ab67616d00001e02c550b05098ae3723e0a8dc6c",
    singer: DummySingerData.manga,
    totalLength: 295,
    totalListened: 12031520,
    releasedDate: "21 şubat 2008",
  );

  static SongModel dunyaninSonunaDogmusum = SongModel(
    name: "Dünyanın sonuna doğmumşum",
    posterUrl:
        "https://i.scdn.co/image/ab67616d00001e02543eb13aa19dd78c4a2cd91f",
    singer: DummySingerData.manga,
    totalLength: 260,
    totalListened: 12031520,
    releasedDate: "21 şubat 2008",
  );
}
