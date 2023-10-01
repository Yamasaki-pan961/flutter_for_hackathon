import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:flutter_template_for_hackathon/feature/ui/measure/measure_provider.dart';
import 'package:flutter_template_for_hackathon/utils/measure/measure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeasureStartView extends HookConsumerWidget {
  const MeasureStartView({super.key});

  @override
  Widget build(context, ref) {
    final inMeasure = ref.watch(inMeasureProvider);

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: switch (inMeasure) {
            MeasureStatus.waitingCountdown => CircularCountDownTimer(
                duration: ref.watch(countdownProvider),
                controller: CountDownController(),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                ringColor: AppTheme.textColor,
                ringGradient: null,
                fillColor: AppTheme.appColor,
                fillGradient: null,
                backgroundGradient: null,
                strokeWidth: 20,
                strokeCap: StrokeCap.round,
                textStyle: const TextStyle(
                  fontSize: 100,
                  color: AppTheme.appColor,
                  fontWeight: FontWeight.bold,
                ),
                textFormat: CountdownTextFormat.S,
                isReverse: true,
                isReverseAnimation: false,
                isTimerTextShown: true,
                autoStart: true,
                onComplete: () {
                  measureMeter(5, (finishedTime) {
                    ref
                        .read(finishedTimeProvider.notifier)
                        .update(finishedTime);
                    ref
                        .read(inMeasureProvider.notifier)
                        .update(MeasureStatus.measured);
                  }, ref);
                  ref
                      .read(inMeasureProvider.notifier)
                      .update(MeasureStatus.inMeasuring);
                },
                timeFormatterFunction: (defaultFormatterFunction, duration) {
                  return (duration.inMilliseconds / 1000).ceil();
                },
              ),
            MeasureStatus.inMeasuring => Container(
                decoration: BoxDecoration(
                  color: AppTheme.backgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 15,
                    color: AppTheme.appColor,
                  ),
                ),
                height: 250,
                width: 250,
                child: const Center(
                  child: Text(
                    '計測中...',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppTheme.appColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            MeasureStatus.measured =>
              Text(ref.watch(finishedTimeProvider).toString()),
            _ => const SizedBox.shrink(),
          }),
        ],
      ),
    );
  }
}
