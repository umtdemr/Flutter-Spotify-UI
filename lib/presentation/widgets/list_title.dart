import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String title;
  final double marginBottom;

  const ListTitle({this.title, this.marginBottom = 10.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
