import 'package:flutter/material.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/presentation/journeys/home/home_screen.dart';
import 'package:spotify/presentation/themes/app_color.dart';
import 'package:spotify/common/extensions/size_extensions.dart';

class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.emperor,
        scaffoldBackgroundColor: AppColor.codGray,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: AppColor.mountainMeadow,
        fontFamily: 'Lineto',
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyText1: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontFamily: 'Lineto',
                  ),
              subtitle1: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontFamily: 'Lineto',
                    fontWeight: FontWeight.w700,
                  ),
              subtitle2: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Lineto',
                    fontWeight: FontWeight.w700,
                  ),
              headline5: Theme.of(context).textTheme.headline5.copyWith(
                    fontFamily: 'Lineto',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
