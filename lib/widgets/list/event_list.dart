import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:townsquare/theme/colors.dart';
import 'package:townsquare/theme/space_size.dart';
import 'package:townsquare/theme/text_style.dart';

import '../../utils/animation/event_card_animation.dart';

class EventList extends StatelessWidget {
  final String selectedCategory;

  const EventList({Key? key, required this.selectedCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Query query;
    if (selectedCategory == 'All') {
      query = FirebaseFirestore.instance.collection('events');
    } else {
      query = FirebaseFirestore.instance
          .collection('events')
          .where('category', isEqualTo: selectedCategory);
    }

    return StreamBuilder<QuerySnapshot>(
      stream: query.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
                  strokeWidth: 2.0,
                ),
                AppSpace.height(10),
                Text("Loading events...",
                    style: AppTextStyles.body1.copyWith(color: AppColors.blue)),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No events found.'));
        }

        final events = snapshot.data!.docs;

        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          itemCount: events.length,
          itemBuilder: (context, index) {
            var event = events[index].data() as Map<String, dynamic>;
            return FadeInEventCard(
              index: index,
              event: event,
            );
          },
        );
      },
    );
  }
}
