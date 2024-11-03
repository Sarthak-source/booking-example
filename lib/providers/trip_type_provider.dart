// lib/providers/trip_type_provider.dart
import 'package:flutter/material.dart';

class TripTypeProvider with ChangeNotifier {
  String _tripType = 'One-Way';

  String get tripType => _tripType;

  void setTripType(String newTripType) {
    _tripType = newTripType;
    notifyListeners();
  }
}
