import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../models/event.dart';
import '../../widgets/card/event_card.dart';
import '../date_format.dart';

class FadeInEventCard extends StatefulWidget {
  final int index;
  final Event event;

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
          time: formatEventTime(Timestamp.fromDate(widget.event.time)),
          eventName: widget.event.title,
          price: '${widget.event.price.toStringAsFixed(2)}€',
          location: widget.event.location,
          spotsLeft: '${widget.event.availableSpots}',
          intensity: widget.event.tags.isNotEmpty ? widget.event.tags : ['N/A'],
          buttonText:
              widget.event.availableSpots > 0 ? 'Join' : 'Sold out',
          isSoldOut: widget.event.availableSpots == 0,
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

