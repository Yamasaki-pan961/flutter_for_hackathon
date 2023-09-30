// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measured_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasuredDataImpl _$$MeasuredDataImplFromJson(Map<String, dynamic> json) =>
    _$MeasuredDataImpl(
      acceleration:
          Acceleration.fromJson(json['acceleration'] as Map<String, dynamic>),
      gyroscope: Gyroscope.fromJson(json['gyroscope'] as Map<String, dynamic>),
      duration: Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$MeasuredDataImplToJson(_$MeasuredDataImpl instance) =>
    <String, dynamic>{
      'acceleration': instance.acceleration,
      'gyroscope': instance.gyroscope,
      'duration': instance.duration.inMicroseconds,
    };

_$AccelerationImpl _$$AccelerationImplFromJson(Map<String, dynamic> json) =>
    _$AccelerationImpl(
      (json['x'] as num).toDouble(),
      (json['y'] as num).toDouble(),
      (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$AccelerationImplToJson(_$AccelerationImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

_$GyroscopeImpl _$$GyroscopeImplFromJson(Map<String, dynamic> json) =>
    _$GyroscopeImpl(
      (json['x'] as num).toDouble(),
      (json['y'] as num).toDouble(),
      (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$GyroscopeImplToJson(_$GyroscopeImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };
