// lib/providers/passenger_provider.dart

import 'package:flutter/material.dart';

class PassengerProvider with ChangeNotifier {
  int _adults = 1;
  int _children = 0;
  int _infants = 0;

  int get adults => _adults;
  int get children => _children;
  int get infants => _infants;

  void incrementAdults() {
    _adults++;
    notifyListeners();
  }

  void decrementAdults() {
    if (_adults > 1) {
      _adults--;
      notifyListeners();
    }
  }

  void incrementChildren() {
    _children++;
    notifyListeners();
  }

  void decrementChildren() {
    if (_children > 0) {
      _children--;
      notifyListeners();
    }
  }

  void incrementInfants() {
    _infants++;
    notifyListeners();
  }

  void decrementInfants() {
    if (_infants > 0) {
      _infants--;
      notifyListeners();
    }
  }

  // Optional: Reset all counts
  void reset() {
    _adults = 1;
    _children = 0;
    _infants = 0;
    notifyListeners();
  }
}
