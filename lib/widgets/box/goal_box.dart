import 'package:flutter/material.dart';
import 'package:townsquare/theme/text_style.dart';
import '../../theme/box_decorations.dart';
import '../../theme/button_style.dart';
import '../../theme/colors.dart';
import '../../theme/space_size.dart';
import '../diagram/circle_diagram.dart';

class GoalBox extends StatelessWidget {
  const GoalBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: AppBoxDecorations.blueBox,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("You're close to your goal!",
                      style: AppTextStyles.h4),
                  const Text("Join more sport activities to collect more points",
                      style: AppTextStyles.body4),
                  AppSpace.height(15),
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 34,
                        child: ElevatedButton(
                          onPressed: () async {},
                          style: AppButtonStyles.blackButton,
                          child: Text(
                            "Join now",
                            style:
                                AppTextStyles.body4.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      AppSpace.width(10),
                      SizedBox(
                        width: 80,
                        height: 34,
                        child: ElevatedButton(
                          onPressed: () async {},
                          style: AppButtonStyles.blackButton,
                          child: Text(
                            "My Points",
                            style:
                                AppTextStyles.body4.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 15),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Background Circle
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CustomPaint(
                      painter: CirclePainter(
                        progress: 1.0, 
                        color: Colors.white,
                        strokeWidth: 8,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CustomPaint(
                      painter: CirclePainter(
                        progress: 0.6,
                        color: AppColors.primary,
                        strokeWidth: 8,
                      ),
                    ),
                  ),
                  const Text(
                    '27',
                    style: AppTextStyles.h3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
