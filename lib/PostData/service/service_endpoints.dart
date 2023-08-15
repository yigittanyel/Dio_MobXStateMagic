part of 'service.dart';

enum _ServiceEndPoints { POSTS }

extension ServiceEndPintsExtension on _ServiceEndPoints {
  String get rawValue {
    switch (this) {
      case _ServiceEndPoints.POSTS:
        return '/posts';
    }
  }
}
