import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  // Headings
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.text, // Use a custom color for text
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  // Subheadings
  static const TextStyle subheading1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle subheading2 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.lightGrey,
  );

  // Body Text
  static const TextStyle body1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );

  static const TextStyle body3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );
  static const TextStyle body4 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );

  // Small Text
  static const TextStyle small1 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );

  static const TextStyle small2 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.normal,
    color: AppColors.text,
  );

  // Buttons
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white, // Buttons usually have white text
  );

  // Captions
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.grey, // Captions typically use a muted color
  );

  // Overline
  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
    letterSpacing: 1.5, // Adds extra spacing for an overline style
  );

  // static const TextStyle heading = TextStyle(
  //   fontSize: 20,
  //   fontWeight: FontWeight.bold,
  //   color: AppColors.text,
  // );

  // static const TextStyle buttonText = TextStyle(
  //     color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16);
}
