import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class SearchPersistentHeader extends SliverPersistentHeaderDelegate {
  int index = 0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      final double percentage =
          (constraints.maxHeight - minExtent) / (maxExtent - minExtent);
      if (++index > Colors.primaries.length - 1) index = 0;

      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 4.0, color: Colors.black45),
          ],
          gradient: LinearGradient(
            begin: Alignment(-1.0, -1.5),
            end: Alignment(-0.2, 0),
            colors: [
              AppColor.nobel2,
              AppColor.codGray,
            ],
          ),
        ),
        height: constraints.maxHeight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: percentage * 120 + 5.h, left: 20.w, right: 20.w),
            child: Column(
              children: [
                if (percentage > 0.5)
                  Text(
                    "Ara",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox(
                  height: percentage,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      width: MediaQuery.of(context).size.width - 100.w,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.red,
                          hintText: "Sanatçılar, şarkılar veya podcastler",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 32.sp,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 150.h;

  @override
  double get minExtent => 50.h;
}
