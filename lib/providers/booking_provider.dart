// lib/providers/booking_provider.dart
import 'package:flutter/material.dart';

class BookingProvider with ChangeNotifier {
  String _departure = '';
  String _destination = '';
  DateTime _departureDate = DateTime.now();

  String get departure => _departure;
  String get destination => _destination;
  DateTime get departureDate => _departureDate;

  void setDeparture(String value) {
    _departure = value;
    notifyListeners();
  }

  void setDestination(String value) {
    _destination = value;
    notifyListeners();
  }

  void setDepartureDate(DateTime value) {
    _departureDate = value;
    notifyListeners();
  }
}
