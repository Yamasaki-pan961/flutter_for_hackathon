import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template_for_hackathon/utils/measure/acceleration.dart';

class DebugMeasure extends HookWidget {
  const DebugMeasure({super.key});
  @override
  Widget build(BuildContext context) {
    final isMeasure = useState(false);
    final completer = useState(Completer<void>());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  isMeasure.value = !isMeasure.value;
                  if (isMeasure.value) {
                    completer.value = Completer<void>();
                    final list = await accelerationLog(completer.value);
                    Clipboard.setData(ClipboardData(
                        text: list.map((e) => e.toJson()).toList().toString()));
                  } else {
                    completer.value.complete();
                  }
                },
                child:
                    isMeasure.value ? const Text('Stop') : const Text('Start')),
          ],
        ),
      ),
    );
  }
}
