import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sensors_plus/sensors_plus.dart';

part 'measured_data.freezed.dart';
part 'measured_data.g.dart';

@freezed
class MeasuredData with _$MeasuredData {
  const MeasuredData._();
  const factory MeasuredData(
      {required Acceleration acceleration,
      required Gyroscope gyroscope,
      required Duration duration}) = _MeasuredData;
  factory MeasuredData.fromEvent(UserAccelerometerEvent userAccelerometerEvent,
          GyroscopeEvent gyroscopeEvent, Duration duration) =>
      MeasuredData(
          acceleration: Acceleration(userAccelerometerEvent.x,
              userAccelerometerEvent.y, userAccelerometerEvent.z),
          gyroscope:
              Gyroscope(gyroscopeEvent.x, gyroscopeEvent.y, gyroscopeEvent.z),
          duration: duration);

  factory MeasuredData.fromJson(Map<String, Object?> json) =>
      _$MeasuredDataFromJson(json);
}

@freezed
class Acceleration with _$Acceleration {
  const factory Acceleration(double x, double y, double z) = _Acceleration;
  factory Acceleration.fromJson(Map<String, Object?> json) =>
      _$AccelerationFromJson(json);
}

@freezed
class Gyroscope with _$Gyroscope {
  const factory Gyroscope(double x, double y, double z) = _Gyroscope;
  factory Gyroscope.fromJson(Map<String, Object?> json) =>
      _$GyroscopeFromJson(json);
}
