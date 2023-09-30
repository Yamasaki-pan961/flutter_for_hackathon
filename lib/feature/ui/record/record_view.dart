import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:flutter_template_for_hackathon/feature/component/record_cell.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/children/empty_screen.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/record_detail_view.dart';

class RecordView extends StatefulWidget {
  const RecordView({Key? key}) : super(key: key);

  @override
  State<RecordView> createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  Set<int> tab = {0};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.backgroundColor,
        actions: [
          //TODO emptyの画面を仮に出している。
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmptyScreen(),
                ),
              );
            },
            icon: const Icon(Icons.hourglass_empty),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: SegmentedButton<int>(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppTheme.appColor;
                    }
                    return AppTheme.unSelectedColor;
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppTheme.unSelectedColor;
                    }
                    return AppTheme.backgroundColor;
                  },
                ),
              ),
              onSelectionChanged: (value) {
                setState(() {
                  tab = value;
                });
              },
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: 0,
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'timer run',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ButtonSegment(
                  value: 1,
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'meter run',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
              selected: tab,
            ),
          ),
          _recordBody(tab.single),
        ],
      ),
    );
  }
}

Widget _recordBody(
  int value,
) {
  //TODO あとでモデルを入れる修正をする
  if (value == 0) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return RecordCell(
            time: '7.32s',
            icon: Icons.av_timer,
            distance: '50m',
            date: '2023/09/30',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecordDetailView(),
                ),
              );
            },
          );
        },
      ),
    );
  } else {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return RecordCell(
            time: '7.32s',
            icon: Icons.directions_run,
            distance: '50m',
            date: '2023/09/30',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecordDetailView(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
