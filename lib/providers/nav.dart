import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nav.g.dart';

@riverpod
class Navigation extends _$Navigation {
  @override
  int build() {
    return 0;
  }

  void updateNavigation(int index) {
    state = index;
  }
}
