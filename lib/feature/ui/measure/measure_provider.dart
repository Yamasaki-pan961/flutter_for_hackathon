import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'measure_provider.g.dart';

enum MeasureStatus {
  inSetting,
  waitingCountdown,
  inMeasuring,
  measured,
}

@Riverpod(keepAlive: true)
class InMeasure extends _$InMeasure {
  @override
  MeasureStatus build() => MeasureStatus.inSetting;

  void update(MeasureStatus value) => state = value;
}

enum MeasureModeType {
  timer,
  distance,
}

@riverpod
class MeasureMode extends _$MeasureMode {
  @override
  MeasureModeType build() => MeasureModeType.distance;

  void update(MeasureModeType value) => state = value;
}

@riverpod
class Countdown extends _$Countdown {
  @override
  int build() => 5;

  void update(int value) => state = value;
}

@Riverpod(keepAlive: true)
class FinishedTime extends _$FinishedTime {
  @override
  Duration? build() => null;

  void update(Duration value) => state = value;
}
