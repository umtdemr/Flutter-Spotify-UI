import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class SongFlexWidget extends StatelessWidget {
  final String songName;
  final String posterURL;

  const SongFlexWidget({this.songName, this.posterURL});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 25.w,
      height: 20.h,
      decoration: BoxDecoration(
          color: AppColor.mineShaft, borderRadius: BorderRadius.circular(7.sp)),
      margin: EdgeInsets.only(right: 10.w, bottom: 8.h),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7.sp),
                bottomLeft: Radius.circular(7.sp),
              ),
              child: CachedNetworkImage(
                imageUrl: posterURL,
                placeholder: (context, url) => CircularProgressIndicator(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Text(
                songName,
                style: Theme.of(context).textTheme.subtitle1,
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
