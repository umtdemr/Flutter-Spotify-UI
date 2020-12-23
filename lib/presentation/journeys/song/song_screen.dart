import 'package:flutter/material.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class SongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColor.emperor, AppColor.mineShaft],
          ),
        ),
        padding: EdgeInsets.only(top: ScreenUtil.statusBarHeight + 15.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [Text("")],
            )
          ],
        ),
      ),
    );
  }
}
