// Typed variant of whole url path (which consists of [TypedSegment]s)
import 'package:hand_made/core/providers/route/typed_segment.dart';

typedef TypedPath = List<TypedSegment>;

//**** app specific segments

class HomeSegment with TypedSegment {}

class AuthSegment with TypedSegment {}

class MainSegment with TypedSegment {}



// class BookSegment with TypedSegment {
//   BookSegment({required this.id});
//   final int id;
//   @override
//   JsonMap toJson() => super.toJson()..['id'] = id;
// }
