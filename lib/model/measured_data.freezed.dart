// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measured_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasuredData _$MeasuredDataFromJson(Map<String, dynamic> json) {
  return _MeasuredData.fromJson(json);
}

/// @nodoc
mixin _$MeasuredData {
  Acceleration get acceleration => throw _privateConstructorUsedError;
  Gyroscope get gyroscope => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasuredDataCopyWith<MeasuredData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuredDataCopyWith<$Res> {
  factory $MeasuredDataCopyWith(
          MeasuredData value, $Res Function(MeasuredData) then) =
      _$MeasuredDataCopyWithImpl<$Res, MeasuredData>;
  @useResult
  $Res call(
      {Acceleration acceleration, Gyroscope gyroscope, Duration duration});

  $AccelerationCopyWith<$Res> get acceleration;
  $GyroscopeCopyWith<$Res> get gyroscope;
}

/// @nodoc
class _$MeasuredDataCopyWithImpl<$Res, $Val extends MeasuredData>
    implements $MeasuredDataCopyWith<$Res> {
  _$MeasuredDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceleration = null,
    Object? gyroscope = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      acceleration: null == acceleration
          ? _value.acceleration
          : acceleration // ignore: cast_nullable_to_non_nullable
              as Acceleration,
      gyroscope: null == gyroscope
          ? _value.gyroscope
          : gyroscope // ignore: cast_nullable_to_non_nullable
              as Gyroscope,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccelerationCopyWith<$Res> get acceleration {
    return $AccelerationCopyWith<$Res>(_value.acceleration, (value) {
      return _then(_value.copyWith(acceleration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GyroscopeCopyWith<$Res> get gyroscope {
    return $GyroscopeCopyWith<$Res>(_value.gyroscope, (value) {
      return _then(_value.copyWith(gyroscope: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasuredDataImplCopyWith<$Res>
    implements $MeasuredDataCopyWith<$Res> {
  factory _$$MeasuredDataImplCopyWith(
          _$MeasuredDataImpl value, $Res Function(_$MeasuredDataImpl) then) =
      __$$MeasuredDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Acceleration acceleration, Gyroscope gyroscope, Duration duration});

  @override
  $AccelerationCopyWith<$Res> get acceleration;
  @override
  $GyroscopeCopyWith<$Res> get gyroscope;
}

/// @nodoc
class __$$MeasuredDataImplCopyWithImpl<$Res>
    extends _$MeasuredDataCopyWithImpl<$Res, _$MeasuredDataImpl>
    implements _$$MeasuredDataImplCopyWith<$Res> {
  __$$MeasuredDataImplCopyWithImpl(
      _$MeasuredDataImpl _value, $Res Function(_$MeasuredDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceleration = null,
    Object? gyroscope = null,
    Object? duration = null,
  }) {
    return _then(_$MeasuredDataImpl(
      acceleration: null == acceleration
          ? _value.acceleration
          : acceleration // ignore: cast_nullable_to_non_nullable
              as Acceleration,
      gyroscope: null == gyroscope
          ? _value.gyroscope
          : gyroscope // ignore: cast_nullable_to_non_nullable
              as Gyroscope,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasuredDataImpl extends _MeasuredData {
  const _$MeasuredDataImpl(
      {required this.acceleration,
      required this.gyroscope,
      required this.duration})
      : super._();

  factory _$MeasuredDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasuredDataImplFromJson(json);

  @override
  final Acceleration acceleration;
  @override
  final Gyroscope gyroscope;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'MeasuredData(acceleration: $acceleration, gyroscope: $gyroscope, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuredDataImpl &&
            (identical(other.acceleration, acceleration) ||
                other.acceleration == acceleration) &&
            (identical(other.gyroscope, gyroscope) ||
                other.gyroscope == gyroscope) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, acceleration, gyroscope, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuredDataImplCopyWith<_$MeasuredDataImpl> get copyWith =>
      __$$MeasuredDataImplCopyWithImpl<_$MeasuredDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasuredDataImplToJson(
      this,
    );
  }
}

abstract class _MeasuredData extends MeasuredData {
  const factory _MeasuredData(
      {required final Acceleration acceleration,
      required final Gyroscope gyroscope,
      required final Duration duration}) = _$MeasuredDataImpl;
  const _MeasuredData._() : super._();

  factory _MeasuredData.fromJson(Map<String, dynamic> json) =
      _$MeasuredDataImpl.fromJson;

  @override
  Acceleration get acceleration;
  @override
  Gyroscope get gyroscope;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$MeasuredDataImplCopyWith<_$MeasuredDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Acceleration _$AccelerationFromJson(Map<String, dynamic> json) {
  return _Acceleration.fromJson(json);
}

/// @nodoc
mixin _$Acceleration {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccelerationCopyWith<Acceleration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccelerationCopyWith<$Res> {
  factory $AccelerationCopyWith(
          Acceleration value, $Res Function(Acceleration) then) =
      _$AccelerationCopyWithImpl<$Res, Acceleration>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$AccelerationCopyWithImpl<$Res, $Val extends Acceleration>
    implements $AccelerationCopyWith<$Res> {
  _$AccelerationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccelerationImplCopyWith<$Res>
    implements $AccelerationCopyWith<$Res> {
  factory _$$AccelerationImplCopyWith(
          _$AccelerationImpl value, $Res Function(_$AccelerationImpl) then) =
      __$$AccelerationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$AccelerationImplCopyWithImpl<$Res>
    extends _$AccelerationCopyWithImpl<$Res, _$AccelerationImpl>
    implements _$$AccelerationImplCopyWith<$Res> {
  __$$AccelerationImplCopyWithImpl(
      _$AccelerationImpl _value, $Res Function(_$AccelerationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$AccelerationImpl(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccelerationImpl implements _Acceleration {
  const _$AccelerationImpl(this.x, this.y, this.z);

  factory _$AccelerationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccelerationImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  @override
  String toString() {
    return 'Acceleration(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccelerationImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccelerationImplCopyWith<_$AccelerationImpl> get copyWith =>
      __$$AccelerationImplCopyWithImpl<_$AccelerationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccelerationImplToJson(
      this,
    );
  }
}

abstract class _Acceleration implements Acceleration {
  const factory _Acceleration(final double x, final double y, final double z) =
      _$AccelerationImpl;

  factory _Acceleration.fromJson(Map<String, dynamic> json) =
      _$AccelerationImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;
  @override
  @JsonKey(ignore: true)
  _$$AccelerationImplCopyWith<_$AccelerationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gyroscope _$GyroscopeFromJson(Map<String, dynamic> json) {
  return _Gyroscope.fromJson(json);
}

/// @nodoc
mixin _$Gyroscope {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GyroscopeCopyWith<Gyroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GyroscopeCopyWith<$Res> {
  factory $GyroscopeCopyWith(Gyroscope value, $Res Function(Gyroscope) then) =
      _$GyroscopeCopyWithImpl<$Res, Gyroscope>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$GyroscopeCopyWithImpl<$Res, $Val extends Gyroscope>
    implements $GyroscopeCopyWith<$Res> {
  _$GyroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GyroscopeImplCopyWith<$Res>
    implements $GyroscopeCopyWith<$Res> {
  factory _$$GyroscopeImplCopyWith(
          _$GyroscopeImpl value, $Res Function(_$GyroscopeImpl) then) =
      __$$GyroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$GyroscopeImplCopyWithImpl<$Res>
    extends _$GyroscopeCopyWithImpl<$Res, _$GyroscopeImpl>
    implements _$$GyroscopeImplCopyWith<$Res> {
  __$$GyroscopeImplCopyWithImpl(
      _$GyroscopeImpl _value, $Res Function(_$GyroscopeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$GyroscopeImpl(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GyroscopeImpl implements _Gyroscope {
  const _$GyroscopeImpl(this.x, this.y, this.z);

  factory _$GyroscopeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GyroscopeImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  @override
  String toString() {
    return 'Gyroscope(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GyroscopeImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GyroscopeImplCopyWith<_$GyroscopeImpl> get copyWith =>
      __$$GyroscopeImplCopyWithImpl<_$GyroscopeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GyroscopeImplToJson(
      this,
    );
  }
}

abstract class _Gyroscope implements Gyroscope {
  const factory _Gyroscope(final double x, final double y, final double z) =
      _$GyroscopeImpl;

  factory _Gyroscope.fromJson(Map<String, dynamic> json) =
      _$GyroscopeImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;
  @override
  @JsonKey(ignore: true)
  _$$GyroscopeImplCopyWith<_$GyroscopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
