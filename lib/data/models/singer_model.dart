import 'package:flutter/foundation.dart';

class Singer {
  final String name;
  final String posterUrl;
  final int monthlyListener;

  const Singer(
      {@required this.name, @required this.posterUrl, this.monthlyListener});

  Singer copyWith({String name, String posterUrl, int monthlyListener}) {
    return Singer(
      name: name ?? this.name,
      posterUrl: posterUrl ?? this.posterUrl,
      monthlyListener: monthlyListener ?? this.monthlyListener,
    );
  }
}
