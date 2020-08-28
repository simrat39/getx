import 'package:get/instance_manager.dart';
import 'package:flutter/foundation.dart';

typedef LogWriterCallback = void Function(String text, {bool isError});

void defaultLogWriterCallback(String value, {bool isError = false}) {
  if (!kReleaseMode) if (isError || GetConfig.isLogEnable) debugPrint(value);
}
