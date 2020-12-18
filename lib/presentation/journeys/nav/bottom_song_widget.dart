import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:spotify/data/models/song_model.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/journeys/route/ex_route.dart';
import 'package:spotify/presentation/journeys/song/song_screen.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class BottomSong extends StatefulWidget {
  final SongModel song;
  final Function onTap;

  const BottomSong({Key key, @required this.song, this.onTap})
      : super(key: key);

  @override
  _BottomSongState createState() => _BottomSongState();
}

class _BottomSongState extends State<BottomSong> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 25.h,
        decoration: BoxDecoration(
          color: AppColor.mineShaft,
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 70.w,
              child: CachedNetworkImage(
                imageUrl: widget.song.posterUrl,
                fit: BoxFit.cover,
                height: 25.h,
              ),
            ),
            Expanded(
              flex: 4,
              child: Marquee(
                text: widget.song.name,
                style: TextStyle(color: Colors.white),
                blankSpace: 20.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                velocity: 50.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  if (active)
                    IconButton(
                      icon: Icon(Icons.pause, color: Colors.white),
                      onPressed: () => setState(() {
                        active = false;
                      }),
                    ),
                  if (!active)
                    IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () => setState(() {
                        active = true;
                      }),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
