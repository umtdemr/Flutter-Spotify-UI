import 'package:flutter/material.dart';
import 'package:spotify/common/extensions/size_extensions.dart';
import 'package:spotify/common/screenutil/screenutil.dart';
import 'package:spotify/presentation/journeys/search/search_persistent_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: SearchPersistentHeader(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (int i = 0; i < 50; i++)
                  Text(
                    "",
                    style: Theme.of(context).textTheme.headline5,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
