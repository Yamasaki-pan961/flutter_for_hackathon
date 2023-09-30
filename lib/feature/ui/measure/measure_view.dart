import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:four_swipe_direction/four_swipe_direction.dart';

class MeasureView extends StatefulWidget {
  const MeasureView({Key? key}) : super(key: key);

  @override
  State<MeasureView> createState() => _MeasureViewState();
}

class _MeasureViewState extends State<MeasureView>
    with SingleTickerProviderStateMixin {
  bool isTimer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isTimer = !isTimer;
                });
              },
              child: const Icon(
                Icons.swap_horiz,
                size: 45,
              ),
            ),
          ),
        ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // AppSpaces.horizontal_16,
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
          )
        ],
      ),
    );
  }
}
