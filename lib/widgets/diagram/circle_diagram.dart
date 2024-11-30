import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final double progress; // Progress percentage (0.0 to 1.0)
  final Color color; // Color of the progress
  final double strokeWidth; // Thickness of the progress line

  CirclePainter({
    required this.progress,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round; // Rounded ends for progress

    final double radius = (size.width - strokeWidth) / 2;
    final Offset center = Offset(size.width / 2, size.height / 2);
    const double startAngle = -90 * (3.14159 / 180); // Start from top
    final double sweepAngle = 2 * 3.14159 * progress; // Sweep based on progress

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}