import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/vector.png'),
            AppSpaces.vertical_30,
            const Text(
              '記録がありません\n'
              ' 計測して記録を取りましょう',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            AppSpaces.vertical_40,
            TextButton(
              onPressed: () {
                //TODO 計測画面に遷移をする
              },
              child: const Text(
                '計測する',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF72F1B7),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
