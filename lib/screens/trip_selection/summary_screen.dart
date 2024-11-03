// lib/screens/trip_selection/summary_screen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/trip_type_provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TripTypeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Trip Summary')),
      body: Center(
        child: Text(
          'Selected Trip Type: ${provider.tripType}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
