import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:flutter_template_for_hackathon/feature/component/app_elevated_button.dart';
import 'package:flutter_template_for_hackathon/feature/component/picker_item.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/record_view.dart';
import 'package:four_swipe_direction/four_swipe_direction.dart';

class MeasureView extends StatefulWidget {
  const MeasureView({Key? key}) : super(key: key);

  @override
  State<MeasureView> createState() => _MeasureViewState();
}

class _MeasureViewState extends State<MeasureView>
    with SingleTickerProviderStateMixin {
  bool isTimer = true;

  final List<String> timeItems = [
    '3s',
    '5s',
    '7s',
    '1s0',
  ];

  String distance = '';
  String time = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.backgroundColor,
      ),
      body: Column(
        children: [
          FourSwipeDirection(
            swipeRight: () {
              setState(() {
                isTimer = !isTimer;
              });
            },
            swipeLeft: () {
              setState(() {
                isTimer = !isTimer;
              });
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
                            top: !isTimer ? 75 : 0, bottom: !isTimer ? 75 : 0),
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
                  color:
                      !isTimer ? AppTheme.textColor : AppTheme.backgroundColor,
                ),
              ),
              const Spacer(),
              Text(
                'Timer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color:
                      isTimer ? AppTheme.textColor : AppTheme.backgroundColor,
                ),
              ),
              AppSpaces.horizontal_16,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSpaces.horizontal_8,
              // PickerItem(
              //   title: '距離',
              //   genderItems: distanceItems,
              //   onChanged: (value) {
              //     distance = value!;
              //   },
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.4,
                child: TextField(),
              ),
              PickerItem(
                title: 'スタートまで',
                genderItems: timeItems,
                onChanged: (value) {
                  //TODO 5s -> 5に変える必要がある
                  time = value!;
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
              //TODO 計測画面に遷移をする
            },
          )
        ],
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
    );
  }
}
