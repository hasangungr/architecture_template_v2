enum ServicePath { user }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.user:
        return '/users';
    }
  }
}
