import 'package:flutter/material.dart';
import 'package:townsquare/theme/colors.dart';
import 'package:townsquare/theme/space_size.dart';
import 'package:townsquare/theme/text_style.dart';
import '../../models/event.dart';
import '../../repositories/event_repository.dart';
import '../../utils/animation/event_card_animation.dart';

class EventList extends StatelessWidget {
  final String selectedCategory;
  final EventRepository _repository = EventRepository();

  EventList({Key? key, required this.selectedCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Event>>(
      stream: _repository.getEventsByCategory(selectedCategory),
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

        final events = snapshot.data ?? [];

        if (events.isEmpty) {
          return const Center(child: Text('No events found.'));
        }

        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          itemCount: events.length,
          itemBuilder: (context, index) {
            return FadeInEventCard(
              index: index,
              event: events[index],
            );
          },
        );
      },
    );
  }
}
