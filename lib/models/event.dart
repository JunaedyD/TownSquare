import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  final String id; 
  final String title;
  final DateTime time;
  final String location;
  final double price;
  final int availableSpots;
  final List<String> tags;
  final String category;

  Event({
    required this.id,
    required this.title,
    required this.time,
    required this.location,
    required this.price,
    required this.availableSpots,
    required this.tags,
    required this.category,
  });

  factory Event.fromFirestore(String id, Map<String, dynamic> data) {
    return Event(
      id: id,
      title: data['eventTitle'] ?? 'Unknown Event',
      time: (data['eventTime'] as Timestamp).toDate(), 
      location: data['eventLocation'] ?? 'Unknown Location',
      price: (data['price'] as num).toDouble(), 
      availableSpots: data['availableSpots'] ?? 0,
      tags: data['tag'] != null && data['tag'] is List<dynamic>
          ? List<String>.from(data['tag'])
          : [],
      category: data['category'] ?? 'Uncategorized',
    );
  }
}
