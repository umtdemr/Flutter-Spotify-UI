import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/data/dummy_data.dart';
import 'package:spotify/presentation/journeys/home/songs_by_vibe.dart';
import 'package:spotify/presentation/themes/app_color.dart';
import 'package:spotify/presentation/widgets/list_title.dart';
import 'package:spotify/presentation/widgets/music_box.dart';
import 'package:spotify/presentation/widgets/music_box_builder.dart';

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
                      ListTitle(
                        title: "Tünaydın",
                        marginBottom: 5.h,
                      ),
                      SongsByVibe(
                        songs: dummyData.lastSixSongs,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      ListTitle(
                        title: "Yakınlarda Çalınanlar",
                        marginBottom: 10.h,
                      ),
                      MusicBoxBuilder(boxList: dummyData.lastSixSongs),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTitle(
                        title: "15 dakikalık veya daha kısa programlar",
                        marginBottom: 5.h,
                      ),
                      MusicBoxBuilder(boxList: dummyData.lastSixSongs),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTitle(
                        title: "Popüler Sanatçılar",
                      ),
                      MusicBoxBuilder(
                        boxList: dummyData.lastSixSongs,
                        type: MusicBoxType.singer,
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
