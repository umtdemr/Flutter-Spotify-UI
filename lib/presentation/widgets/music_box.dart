import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';

enum MusicBoxType { song, singer }

class MusicBox extends StatelessWidget {
  final String posterUrl;
  final String name;
  final MusicBoxType type;

  const MusicBox({this.posterUrl, this.name, this.type = MusicBoxType.song});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 120.w,
      margin: EdgeInsets.only(right: 15.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (type == MusicBoxType.song)
            CachedNetworkImage(
              imageUrl: posterUrl,
              fit: BoxFit.cover,
            ),
          if (type == MusicBoxType.singer)
            ClipRRect(
              borderRadius: BorderRadius.circular(60.0),
              child: CachedNetworkImage(
                imageUrl: posterUrl,
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
