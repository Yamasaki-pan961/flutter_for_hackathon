import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:circular_countdown_timer/countdown_text_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';

class MeasureStartView extends StatefulWidget {
  const MeasureStartView({
    Key? key,
    required this.countdown,
  }) : super(key: key);

  final int countdown;

  @override
  State<MeasureStartView> createState() => _MeasureStartViewState();
}

class _MeasureStartViewState extends State<MeasureStartView> {
  final CountDownController controller = CountDownController();

  bool isStart = false;

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
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
            child: !isStart
                ? CircularCountDownTimer(
                    duration: widget.countdown,
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
                      //TODO 測定を開始する処理を発火する
                      setState(() {
                        isStart = !isStart;
                      });
                    },
                    timeFormatterFunction:
                        (defaultFormatterFunction, duration) {
                      return (duration.inMilliseconds / 1000).ceil();
                    },
                  )
                : Container(
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
          ),
        ],
      ),
    );
  }
}
