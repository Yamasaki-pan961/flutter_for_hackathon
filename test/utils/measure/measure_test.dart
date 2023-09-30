import 'package:flutter_template_for_hackathon/utils/measure/calculate_provider.dart';
import 'package:flutter_template_for_hackathon/utils/measure/measure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

      test('measure()のテスト', () async {
        final container = ProviderContainer();
        addTearDown(container.dispose);

        final stream = streamMockBuilder(zKaiten);
        await stream.listen((measuredData) {
          measure(measuredData, container);
        }).asFuture();

        print(container.read(meterProvider));
      });
    },
  );
}
