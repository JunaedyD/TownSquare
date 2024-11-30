  import 'package:cloud_firestore/cloud_firestore.dart';

String formatEventTime(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')} (${dateTime.hour + 1} min)';
  }