import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:flutter_template_for_hackathon/feature/component/app_elevated_button.dart';
import 'package:flutter_template_for_hackathon/feature/component/app_text_fielld.dart';
import 'package:flutter_template_for_hackathon/feature/component/picker_item.dart';
import 'package:flutter_template_for_hackathon/feature/ui/measure/measure_provider.dart';
import 'package:flutter_template_for_hackathon/feature/ui/measure/measure_start_view.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/record_view.dart';
import 'package:four_swipe_direction/four_swipe_direction.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeasureView extends HookConsumerWidget {
  const MeasureView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final timeInputController = useTextEditingController();
    final distanceInputController = useTextEditingController();
    final isTimer = ref.watch(measureModeProvider) == MeasureModeType.timer;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FourSwipeDirection(
                swipeRight: () {
                  ref
                      .read(measureModeProvider.notifier)
                      .update(MeasureModeType.distance);
                },
                swipeLeft: () {
                  ref
                      .read(measureModeProvider.notifier)
                      .update(MeasureModeType.timer);
                },
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(-125, 0),
                      child: AnimatedContainer(
                        margin: EdgeInsets.only(left: isTimer ? 0 : 75),
                        duration: const Duration(milliseconds: 200),
                        width: 300,
                        height: 300,
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              top: isTimer ? 75 : 0, bottom: isTimer ? 75 : 0),
                          child: CircleAvatar(
                            backgroundColor: !isTimer
                                ? AppTheme.textColor
                                : AppTheme.shade700Color,
                            child: Icon(
                              Icons.av_timer,
                              size: !isTimer ? 155 : 78,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Transform.translate(
                        offset: const Offset(125, 0),
                        child: AnimatedContainer(
                          margin: EdgeInsets.only(right: !isTimer ? 0 : 75),
                          duration: const Duration(milliseconds: 200),
                          width: 300,
                          height: 300,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 200),
                            padding: EdgeInsets.only(
                                top: !isTimer ? 75 : 0,
                                bottom: !isTimer ? 75 : 0),
                            child: CircleAvatar(
                              backgroundColor: isTimer
                                  ? AppTheme.textColor
                                  : AppTheme.shade700Color,
                              child: Icon(
                                Icons.directions_run,
                                size: isTimer ? 155 : 78,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AppSpaces.vertical_16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSpaces.horizontal_16,
                  Text(
                    'Timer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: !isTimer
                          ? AppTheme.textColor
                          : AppTheme.backgroundColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Timer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: isTimer
                          ? AppTheme.textColor
                          : AppTheme.backgroundColor,
                    ),
                  ),
                  AppSpaces.horizontal_16,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSpaces.horizontal_8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '時間',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.appColor,
                        ),
                      ),
                      isTimer
                          ? AppTextField(
                              isTimer: false,
                              controller: distanceInputController,
                            )
                          : AppTextField(
                              isTimer: true,
                              controller: timeInputController,
                            ),
                    ],
                  ),
                  PickerItem(
                    title: 'スタートまで',
                    genderItems: const ['3s', '5s', '7s', '10s'],
                    onChanged: (value) {
                      //TODO 5s -> 5に変える必要がある
                      if (value != null) {
                        String newText = value.replaceAll('s', '');
                        ref.read(countdownProvider.notifier).update(int.parse(newText));
                      }
                    },
                  ),
                  AppSpaces.horizontal_8,
                ],
              ),
              AppSpaces.vertical_60,
              AppElevatedButton(
                icon: 'assets/start.png',
                title: 'Ready',
                buttonStart: AppTheme.buttonStart,
                buttonEnd: AppTheme.buttonEnd,
                onPressed: () {
                  ref
                      .read(inMeasureProvider.notifier)
                      .update(MeasureStatus.waitingCountdown);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MeasureStartView(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.shade700Color,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RecordView(),
              ),
            );
          },
          child: const Icon(
            Icons.history,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
