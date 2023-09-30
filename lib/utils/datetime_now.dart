import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'datetime_now.g.dart';

@Riverpod(keepAlive: true)
DateTime Function() dateTimeNow(DateTimeNowRef ref) => DateTime.now;
