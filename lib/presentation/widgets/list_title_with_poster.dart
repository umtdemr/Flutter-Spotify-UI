import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class ListTitleWithPoster extends StatelessWidget {
  final String title;
  final String subTitle;
  final String posterUrl;

  const ListTitleWithPoster({
    Key key,
    @required this.title,
    this.subTitle,
    @required this.posterUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50.0.w,
            height: 25.0.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.sp),
              child: CachedNetworkImage(
                imageUrl: posterUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subTitle,
                style: TextStyle(color: Colors.white54),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 25.sp),
              ),
            ],
          )
        ],
      ),
    );
  }
}
