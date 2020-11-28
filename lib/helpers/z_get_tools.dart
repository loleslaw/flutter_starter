import 'package:flutter/material.dart';
import 'package:get/get.dart';
enum MessageType {ERROR, MESSAGE}

zShowMessage({MessageType messageType, String title, String message}) {

  if (message == '') {
    return;
  }

  Color _backgroundColor = Get.theme.snackBarTheme.backgroundColor;
  Color _textColor = Get.theme.snackBarTheme.actionTextColor;

  switch (messageType) {
    case MessageType.ERROR:
      _backgroundColor = Colors.red;
      _textColor = Colors.white;
      break;
      case MessageType.MESSAGE:
      _backgroundColor = Colors.amber;
      _textColor = Colors.white;
      break;
    default:
      break;
  }

  Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      backgroundColor: _backgroundColor,
      colorText: _textColor 
  );
}