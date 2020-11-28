import 'package:flutter/services.dart';

void zHideKeyboard() {
  SystemChannels.textInput.invokeMapMethod('TextInput.hide');
}