import 'dart:convert';
import 'package:hand_made/core/providers/route/segment.dart';

typedef JsonMap = Map<String, dynamic>;

/// Ancestor for typed segments.
///
/// Instead of ```navigate('home/book;id=3')``` we can use
/// ```navigate([HomeSegment(), BookSegment(id: 3)]);```
abstract class TypedSegment {
  factory TypedSegment.fromJson(JsonMap json) {
    // if (json['runtimeType'] == 'BookSegment') {
    //   return BookSegment(id: json['id']);
    // }

    if (json['runtimeType'] == 'AuthSegment') {
      return AuthSegment();
    }

    if (json['runtimeType'] == 'MainSegment') {
      return MainSegment();
    }

    return HomeSegment();
  }

  // factory TypedSegment.fromJson(JsonMap json) =>
  //     json['runtimeType'] == 'BookSegment'
  //         ? BookSegment(id: json['id'])
  //         : HomeSegment();

  JsonMap toJson() => <String, dynamic>{'runtimeType': runtimeType.toString()};
  @override
  String toString() => jsonEncode(toJson());
}
