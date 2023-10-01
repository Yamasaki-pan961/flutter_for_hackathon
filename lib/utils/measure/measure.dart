import 'dart:async';
import 'dart:math';

import 'package:flutter_template_for_hackathon/model/measured_data.dart';
import 'package:flutter_template_for_hackathon/utils/datetime_now.dart';
import 'package:flutter_template_for_hackathon/utils/measure/calculate_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vector_math/vector_math_64.dart';

typedef MeterRecord = ({double meter, Duration time});

Vector3 nowVelocity = Vector3.zero();

/// 設定された距離を移動したら、[callback]が実行される関数
///
/// [meter]ｍ移動すると[callback]が実行される
Future<List<MeterRecord>> measureMeter(int meter, Function() callback) async {
  final container = ProviderContainer();
  final completer = Completer<void>();
  final meterLog = <MeterRecord>[];

  final getNowDate = container.read(dateTimeNowProvider);
  final logStartTime = getNowDate();

  final listener = Rx.combineLatest2(userAccelerometerEvents, gyroscopeEvents,
      (UserAccelerometerEvent accelerometerEvent,
          GyroscopeEvent gyroscopeEvent) {
    final now = getNowDate();
    final duration = now.difference(logStartTime);
    return MeasuredData.fromEvent(accelerometerEvent, gyroscopeEvent, duration);
  }).listen((measuredData) {
    final meterRecord = measure(measuredData, container);
    if (meter <= meterRecord.meter) {
      completer.complete();
      callback();
    }
  });

  await completer.future;
  await listener.cancel();
  return meterLog;
}

MeterRecord measure(MeasuredData measuredData, ProviderContainer container) {
  final lastMeasure = container.read(lastMeasureProvider);
  if (lastMeasure != null) {
    final addedDistance =
        _calcAddedDistance(lastMeasure, measuredData, container);
    container.read(meterProvider.notifier).add(addedDistance);
  }
  container.read(lastMeasureProvider.notifier).update(measuredData);
  return (meter: container.read(meterProvider), time: measuredData.duration);
}

double _calcAddedDistance(
    MeasuredData before, MeasuredData after, ProviderContainer container) {
  final durationDiff =
      (after.duration - before.duration).inMicroseconds / (1000 * 1000);

  final lastVelocity = container.read(lastVelocityProvider);
  final nowVelocity =
      after.acceleration.toVector() * durationDiff + lastVelocity;
  container.read(lastVelocityProvider.notifier).update(nowVelocity);

  final addedDistance = nowVelocity * durationDiff;

  final lastRotation = container.read(lastRotationProvider);
  final nowRotation = after.gyroscope.toVector() * durationDiff + lastRotation;
  container.read(lastRotationProvider.notifier).update(nowRotation);

  final relativeX = addedDistance.x * cos(nowRotation.y) * cos(nowRotation.z);
  final relativeY = addedDistance.y * cos(nowRotation.z) * cos(nowRotation.x);
  final relativeZ = addedDistance.x * cos(nowRotation.x) * cos(nowRotation.y);

  final relativeDistance = Vector3(relativeX, relativeY, relativeZ);
  return relativeDistance.distanceTo(Vector3.zero());
}
