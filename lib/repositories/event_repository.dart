import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event.dart';

class EventRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Event>> getEventsByCategory(String category) {
    Query query;

    if (category == 'All') {
      query = _firestore.collection('events');
    } else {
      query = _firestore.collection('events').where('category', isEqualTo: category);
    }

    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Event.fromFirestore(doc.id, doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
