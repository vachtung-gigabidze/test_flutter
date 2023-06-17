import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navbar_provider.g.dart';

@riverpod
class Navbar extends _$Navbar {
  @override
  int build() => 0;

  void select(int index) {
    state = index;
  }
}
