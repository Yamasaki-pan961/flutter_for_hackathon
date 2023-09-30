import 'dart:async';

import 'package:flutter_template_for_hackathon/model/measured_data.dart';
import 'package:flutter_template_for_hackathon/utils/datetime_now.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sensors_plus/sensors_plus.dart';

Future<List<MeasuredData>> accelerationLog(Completer<void> completer) async {
  final getNowDate = ProviderContainer().read(dateTimeNowProvider);
  final logStartTime = getNowDate();
  final list = <MeasuredData>[];
  final listener = Rx.combineLatest2(userAccelerometerEvents, gyroscopeEvents,
      (UserAccelerometerEvent accelerometerEvent,
          GyroscopeEvent gyroscopeEvent) {
    final now = getNowDate();
    final duration = logStartTime.difference(now);
    return MeasuredData.fromEvent(accelerometerEvent, gyroscopeEvent, duration);
  }).listen((event) {
    list.add(event);
  });

  await completer.future;
  await listener.cancel();

  return list;
}
