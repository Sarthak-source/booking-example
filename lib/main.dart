// lib/main.dart
import 'package:book_app_test/screens/trip_selection/trip_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/booking_provider.dart';
import 'providers/passenger_provider.dart';
import 'providers/trip_type_provider.dart';
import 'screens/flights/flights_screen.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TripTypeProvider()),
        ChangeNotifierProvider(create: (_) => BookingProvider()),
        ChangeNotifierProvider(create: (_) => PassengerProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abisiniya Travel & Tours',
      theme: appTheme,
      home: const TripSelectionScreen(),
      routes: {
        '/passenger-selection': (context) => const PassengerSelectionScreen(),
      },
    );
  }
}
