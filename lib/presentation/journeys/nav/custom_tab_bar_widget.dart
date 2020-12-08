import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';

class CustomTabBar extends StatelessWidget {
  final List<Map<String, dynamic>> icons;
  final Function onTap;
  final int selectedIndex;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.onTap,
    @required this.selectedIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.transparent,
      labelStyle: TextStyle(fontSize: 11.0.sp),
      tabs: icons
          .map(
            (e) => Tab(
              icon: Icon(e["icon"]),
              text: e["text"],
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}
