import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_provider.g.dart';

@riverpod
class Record extends _$Record {
  @override
  Set<int> build() => {0};

  void changeTab(Set<int> value) {
    state = value;
  }
}
