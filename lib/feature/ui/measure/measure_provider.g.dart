// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$inMeasureHash() => r'3cd82298a2ed7d2ce26e7f3eb201e0c0f14b7bf9';

/// See also [InMeasure].
@ProviderFor(InMeasure)
final inMeasureProvider = NotifierProvider<InMeasure, MeasureStatus>.internal(
  InMeasure.new,
  name: r'inMeasureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$inMeasureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InMeasure = Notifier<MeasureStatus>;
String _$measureModeHash() => r'c9ba7451ad2369323da26ddd3e7cce7fd2751f5b';

/// See also [MeasureMode].
@ProviderFor(MeasureMode)
final measureModeProvider =
    AutoDisposeNotifierProvider<MeasureMode, MeasureModeType>.internal(
  MeasureMode.new,
  name: r'measureModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$measureModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MeasureMode = AutoDisposeNotifier<MeasureModeType>;
String _$countdownHash() => r'bf788f156ea0e5e83733d4bb8b89900716500162';

/// See also [Countdown].
@ProviderFor(Countdown)
final countdownProvider = AutoDisposeNotifierProvider<Countdown, int>.internal(
  Countdown.new,
  name: r'countdownProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$countdownHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Countdown = AutoDisposeNotifier<int>;
String _$finishedTimeHash() => r'915b93d280120c3507c69c823a28be5f2e8755da';

/// See also [FinishedTime].
@ProviderFor(FinishedTime)
final finishedTimeProvider = NotifierProvider<FinishedTime, Duration?>.internal(
  FinishedTime.new,
  name: r'finishedTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$finishedTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FinishedTime = Notifier<Duration?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
