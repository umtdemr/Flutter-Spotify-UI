import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/data/dummy_data.dart';
import 'package:spotify/presentation/journeys/home/song_flex_widget.dart';
import 'package:spotify/presentation/themes/app_color.dart';
import 'package:spotify/presentation/widgets/music_box.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DummyData dummyData = DummyData();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(left: 20.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.0, -1.5),
                      end: Alignment(-0.2, 0),
                      colors: [
                        AppColor.nobel2,
                        AppColor.codGray,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: ScreenUtil.statusBarHeight,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: Text(
                          "Tünaydın",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              for (int i = 0; i < 3; i++)
                                SongFlexWidget(
                                  songName: dummyData.lastSixSongs[i].name,
                                  posterURL:
                                      dummyData.lastSixSongs[i].posterUrl,
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              for (int i = 3; i < 6; i++)
                                SongFlexWidget(
                                  songName: dummyData.lastSixSongs[i].name,
                                  posterURL:
                                      dummyData.lastSixSongs[i].posterUrl,
                                ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Yakınlarda Çalınanlar",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 74.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyData.lastSixSongs.length,
                          itemBuilder: (context, index) {
                            return MusicBox(
                              posterUrl:
                                  dummyData.lastSixSongs[index].posterUrl,
                              name: dummyData.lastSixSongs[index].name,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
