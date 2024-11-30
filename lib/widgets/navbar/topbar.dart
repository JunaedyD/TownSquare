import 'package:flutter/material.dart';
import 'package:townsquare/theme/space_size.dart';

import '../../theme/text_style.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Tues, Nov 12',
                style: AppTextStyles.subheading2,
              ),
              Text(
                'This week in Estepona',
                style: AppTextStyles.h4,
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.notifications_none_rounded,
                size: 27,
              ),
              AppSpace.width(10),
              const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/lion-testttt.appspot.com/o/jun.png?alt=media&token=1ee211f8-48fe-4a51-bcd2-ba7747213666'),
                  backgroundColor: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}