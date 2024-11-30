import 'package:flutter/material.dart';

class AppButtonStyles {
  static final ButtonStyle base = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 5,
  );

  static final ButtonStyle blackButton = base.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.black),
  );

  static final ButtonStyle redButton = base.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.red),
  );
}
