//*********************************************
// Path Parser
//*********************************************

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/core/providers/route/typed_segment.dart';

class RouteInformationParserImpl extends RouteInformationParser<TypedPath> {
  @override
  Future<TypedPath> parseRouteInformation(RouteInformation routeInformation) =>
      Future.value(path2TypedPath(routeInformation.location));

  @override
  RouteInformation restoreRouteInformation(TypedPath configuration) =>
      RouteInformation(location: typedPath2Path(configuration));

  static String typedPath2Path(TypedPath typedPath) => typedPath
      .map((s) => Uri.encodeComponent(jsonEncode(s.toJson())))
      .join('/');

  static TypedPath path2TypedPath(String? path) {
    if (path == null || path.isEmpty) return [];
    return [
      for (final s in path.split('/'))
        if (s.isNotEmpty) TypedSegment.fromJson(jsonDecode(Uri.decodeFull(s)))
    ];
  }
}
