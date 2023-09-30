import 'package:flutter_test/flutter_test.dart';

import 'data/naname_riron.dart';
import 'data/pocket_in.dart';
import 'data/pocket_in_out.dart';
import 'data/riron.dart';
import 'data/temoti.dart';
import 'data/z_kaiten.dart';

Stream<T> streamMockBuilder<T>(List<T> list) => Stream.fromIterable(list);
void main() {
  group(
    "計測Jsonをエラーなく読み込めるか",
    () {
      test(
        '計測Jsonをエラーなく読み込めるか',
        () async {
          nanameRiron;
          pocketIn;
          pocketInOut;
          riron;
          temoti;
          zKaiten;
        },
      );
      test('モックデータからストリームが作成できるか', () async {
        final stream = streamMockBuilder(nanameRiron);
        await stream.listen((event) {
          print(event);
        }).asFuture();

      });
    },
  );
}
