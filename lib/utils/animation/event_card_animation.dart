import 'package:flutter/material.dart';

import '../../widgets/card/event_card.dart';
import '../date_format.dart';

class FadeInEventCard extends StatefulWidget {
  final int index;
  final Map<String, dynamic> event;

  const FadeInEventCard({
    Key? key,
    required this.index,
    required this.event,
  }) : super(key: key);

  @override
  FadeInEventCardState createState() => FadeInEventCardState();
}

class FadeInEventCardState extends State<FadeInEventCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    Future.delayed(Duration(milliseconds: widget.index * 200), () {
      _controller.forward();
    });

    _opacity = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: buildEventCard(
          time: formatEventTime(widget.event['eventTime']),
          eventName: widget.event['eventTitle'] ?? 'Unknown Event',
          price: '${widget.event['price']}€',
          location: widget.event['eventLocation'] ?? 'Unknown Location',
          spotsLeft: '${widget.event['availableSpots']}',
          intensity: (widget.event['tag'] is List<dynamic>)
              ? List<String>.from(widget.event['tag'])
              : ['N/A'],
          buttonText: widget.event['availableSpots'] > 0 ? 'Join' : 'Sold out',
          isSoldOut: widget.event['availableSpots'] == 0,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
