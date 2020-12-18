import 'package:flutter/material.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/common/extensions/size_extensions.dart';

class SongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.only(top: ScreenUtil.statusBarHeight + 15.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [Text("sleam")],
            )
          ],
        ),
      ),
    );
  }
}
