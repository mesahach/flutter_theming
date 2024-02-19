import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void showSuccessMessage({String? message, BuildContext? context}) {
  ScaffoldMessenger.of(context!).showSnackBar(
    SnackBar(
      content: Text(
        message!,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
    ),
  );
}

void showErrorMessage({String? message, BuildContext? context}) {
  ScaffoldMessenger.of(context!).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message!,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Theme.of(context)
          .colorScheme
          .error, //const Color.fromARGB(255, 221, 48, 45),
    ),
  );
}
