import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';
import 'package:flutter_template_for_hackathon/feature/component/record_cell.dart';
import 'package:flutter_template_for_hackathon/feature/provider/record_provider.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/children/empty_screen.dart';
import 'package:flutter_template_for_hackathon/feature/ui/record/record_detail_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecordView extends ConsumerWidget {
  const RecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(recordProvider);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
            '履歴一覧',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19
          ),
        ),
        elevation: 0,
        backgroundColor: AppTheme.backgroundColor,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: SegmentedButton<int>(
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>(
                    (Set<MaterialState> states) {
                  return const BorderSide(
                    color: AppTheme.unSelectedColor,
                  );
                }),
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
                    return AppTheme.shade700Color;
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppTheme.shade700Color;
                    }
                    return AppTheme.backgroundColor;
                  },
                ),
              ),
              onSelectionChanged: (value) {
                ref.read(recordProvider.notifier).changeTab(value);
              },
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: 0,
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Timer',
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
                      'Run',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
              selected: state,
            ),
          ),
          _recordBody(
              state.single,
            [],
            [
              RecordCellViewData(
              name: '10.00s',
              icon: Icons.directions_run,
              subIcon: Icons.av_timer,
              headline: '1000m',
              date: '2023/09/30',
            ),
              RecordCellViewData(
                name: '10.00s',
                icon: Icons.directions_run,
                subIcon: Icons.av_timer,
                headline: '1000m',
                date: '2023/09/30',
              )
            ]
          ),
        ],
      ),
    );
  }
}

Widget _recordBody(
  int value,
    List<RecordCellViewData> timerList,
    List<RecordCellViewData> runList
) {
  //TODO あとでモデルを入れる修正をする
  if (value == 0) {
    if (timerList.isEmpty) {
      return const EmptyScreen();
    } else {
      return Expanded(
        child: ListView.builder(
          itemCount: timerList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                RecordCell(
                  viewData: RecordCellViewData(
                    name: '50m',
                    icon: Icons.av_timer,
                    subIcon: Icons.directions_run,
                    headline: '7.32s',
                    date: '2023/09/30',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecordDetailView(),
                      ),
                    );
                  },
                ),
                const Divider(
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                  color: AppTheme.unSelectedColor,
                )
              ],
            );
          },
        ),
      );
    }
  } else {
    if (runList.isEmpty) {
      return const EmptyScreen();
    } else {
      return Expanded(
        child: ListView.builder(
          itemCount: runList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                RecordCell(
                  viewData: runList[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecordDetailView(),
                      ),
                    );
                  },
                ),
                const Divider(
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                  color: AppTheme.unSelectedColor,
                )
              ],
            );
          },
        ),
      );
    }
  }
}
