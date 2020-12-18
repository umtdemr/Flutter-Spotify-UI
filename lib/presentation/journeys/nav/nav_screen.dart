import 'package:flutter/material.dart';
import 'package:spotify/data/dummy_song_data.dart';
import 'package:spotify/presentation/journeys/home/home_screen.dart';
import 'package:spotify/presentation/journeys/nav/bottom_song_widget.dart';
import 'package:spotify/presentation/journeys/nav/custom_tab_bar_widget.dart';
import 'package:spotify/presentation/journeys/route/ex_route.dart';
import 'package:spotify/presentation/journeys/search/search_screen.dart';
import 'package:spotify/presentation/journeys/song/song_screen.dart';
import 'package:spotify/presentation/themes/app_color.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    Scaffold(),
  ];
  final List<Map<String, dynamic>> _icons = const [
    {"text": "Ana sayfa", "icon": Icons.home},
    {"text": "Ara", "icon": Icons.search},
    {"text": "Kitaplığın", "icon": Icons.library_books},
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          children: _screens,
          index: _selectedIndex,
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomSong(
              song: DummySongData.dunyaninSonunaDogmusum,
              onTap: () {
                Navigator.push(
                    context,
                    EnterExitRoute(
                        exitPage: NavScreen(), enterPage: SongScreen()));
              },
            ),
            Container(
              color: AppColor.mineShaft,
              child: CustomTabBar(
                icons: _icons,
                selectedIndex: _selectedIndex,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
