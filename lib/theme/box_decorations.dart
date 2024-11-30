import 'package:flutter/material.dart';

import 'colors.dart';

class AppBoxDecorations {
  static final BoxDecoration roundedContainer = BoxDecoration(
    color: AppColors.lightGrey,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static final BoxDecoration blueBox = BoxDecoration(
    color: AppColors.lightBlue,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 10,
        spreadRadius: 2,
        offset: const Offset(0, 5),
      ),
    ],
  );

  static final BoxDecoration whiteBox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), // Shadow color with transparency
        blurRadius: 10, // Softness of the shadow
        spreadRadius: 2, // How far the shadow spreads
        offset:
            const Offset(0, 5), // Position of the shadow (horizontal, vertical)
      ),
    ],
  );

  
}
