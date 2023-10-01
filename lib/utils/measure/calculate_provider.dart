import 'package:flutter_template_for_hackathon/model/measured_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vector_math/vector_math_64.dart';

part 'calculate_provider.g.dart';

@Riverpod(keepAlive: true)
class LastMeasure extends _$LastMeasure {
  @override
  MeasuredData? build() => null;

  void update(MeasuredData value) => state = value;
}

@Riverpod(keepAlive: true)
class Meter extends _$Meter {
  @override
  double build() => 0;

  void add(double value) => state += value;
}


@Riverpod(keepAlive: true)
class LastVelocity extends _$LastVelocity {
  @override
  Vector3 build() => Vector3.zero();

  void update(Vector3 value) => state = value;
}

@Riverpod(keepAlive: true)
class LastRotation extends _$LastRotation {
  @override
  Vector3 build() => Vector3.zero();

  void update(Vector3 value) => state = value;
}
