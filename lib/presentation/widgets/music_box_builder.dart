import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/widgets/music_box.dart';

class MusicBoxBuilder extends StatelessWidget {
  final List boxList;
  final MusicBoxType type;

  MusicBoxBuilder({@required this.boxList, this.type = MusicBoxType.song})
      : assert(boxList.length > 0, "Box list cannot be less than 0");

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: boxList.length,
        itemBuilder: (context, index) {
          return MusicBox(
            posterUrl: boxList[index].posterUrl,
            name: boxList[index].name,
            type: type,
          );
        },
      ),
    );
  }
}
