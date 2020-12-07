import 'package:flutter/material.dart';
import 'package:spotify/data/models/song_model.dart';
import 'package:spotify/presentation/journeys/home/song_flex_widget.dart';

class SongsByVibe extends StatelessWidget {
  final List<SongModel> songs;

  SongsByVibe({this.songs})
      : assert(songs.length > 0, "songs list length cannot be less than 0");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              SongFlexWidget(
                songName: songs[i].name,
                posterURL: songs[i].posterUrl,
              ),
          ],
        ),
        Row(
          children: [
            for (int i = 3; i < 6; i++)
              SongFlexWidget(
                songName: songs[i].name,
                posterURL: songs[i].posterUrl,
              ),
          ],
        ),
      ],
    );
  }
}
