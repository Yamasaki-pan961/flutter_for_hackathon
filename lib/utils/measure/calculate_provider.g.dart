// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lastMeasureHash() => r'5d76b90592a4c232c5161b952d92a07a1dddd130';

/// See also [LastMeasure].
@ProviderFor(LastMeasure)
final lastMeasureProvider =
    NotifierProvider<LastMeasure, MeasuredData?>.internal(
  LastMeasure.new,
  name: r'lastMeasureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lastMeasureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LastMeasure = Notifier<MeasuredData?>;
String _$meterHash() => r'805999c8d537895cf3b18ec515153ab52b2fca1d';

/// See also [Meter].
@ProviderFor(Meter)
final meterProvider = NotifierProvider<Meter, double>.internal(
  Meter.new,
  name: r'meterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$meterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Meter = Notifier<double>;
String _$lastVelocityHash() => r'781808765359272cb94fde3601f4dee249f0684a';

/// See also [LastVelocity].
@ProviderFor(LastVelocity)
final lastVelocityProvider = NotifierProvider<LastVelocity, Vector3>.internal(
  LastVelocity.new,
  name: r'lastVelocityProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lastVelocityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LastVelocity = Notifier<Vector3>;
String _$lastRotationHash() => r'045cf09ec182dc1550c828146e7a1c32974e7ab2';

/// See also [LastRotation].
@ProviderFor(LastRotation)
final lastRotationProvider = NotifierProvider<LastRotation, Vector3>.internal(
  LastRotation.new,
  name: r'lastRotationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lastRotationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LastRotation = Notifier<Vector3>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
