import 'package:dropdown_button2/dropdown_button2.dart';
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
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;

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
              PickerItem(title: '距離', genderItems: genderItems),
              PickerItem(title: 'スタートまで', genderItems: genderItems),
              AppSpaces.horizontal_8,
            ],
          ),
          AppSpaces.vertical_60,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 94),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(6.8),
                        bottomRight: Radius.circular(34),
                        bottomLeft: Radius.circular(6.8)
                    ),
                    gradient: LinearGradient(
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      colors: <Color>[
                        AppTheme.buttonStart,
                        AppTheme.buttonEnd,
                      ],
                      stops: const [
                        0.0,
                        1.0,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: Container(
                      height: 68,
                      width: 202,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/start.png'),
                          const Text(
                            'Ready',
                            style: TextStyle(
                              fontSize: 28.9,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.backgroundColor,
                            ),
                          ),
                        ],
                      ),
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

class PickerItem extends StatelessWidget {
  const PickerItem({
    Key? key,
    required this.title,
    required this.genderItems,
  }) : super(key: key);

  final String title;
  final List<String> genderItems;

  @override
  Widget build(BuildContext context) {
    String selectedValue = '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppTheme.appColor,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.4,
          height: 60,
          child: DropdownButtonFormField2<String>(
            isExpanded: true,
            decoration: InputDecoration(
              // Add Horizontal padding using menuItemStyleData.padding so it matches
              // the menu padding when button's width is not specified.
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // Add more decoration..
            ),
            hint: const Text(
              'Select Your Gender',
              style: TextStyle(fontSize: 14),
            ),
            items: genderItems
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            validator: (value) {
              if (value == null) {
                return 'Please select gender.';
              }
              return null;
            },
            onChanged: (value) {
              //Do something when selected item is changed.
            },
            onSaved: (value) {
              selectedValue = value.toString();
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(right: 8),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }
}
