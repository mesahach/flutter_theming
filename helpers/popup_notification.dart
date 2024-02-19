import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void popUpNotification(String title, String message, BuildContext? context) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context!,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              // To close the dialog
              Navigator.pop(context);
            },
            child: const Text("Okay"),
          ),
        ],
      ),
    );
  } else {
    showDialog(
      context: context!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Okay"),
          ),
        ],
      ),
    );
  }
}
