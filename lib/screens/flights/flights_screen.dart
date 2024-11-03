// lib/screens/passenger_selection_screen.dart

import 'package:book_app_test/providers/passenger_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PassengerSelectionScreen extends StatelessWidget {
  const PassengerSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PassengerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flights'),
        backgroundColor: Colors.green[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[100],
              child: const Text(
                'ECONOMY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            // Passengers Selector Card
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Passengers'),
                subtitle: Text(
                    '${provider.adults} Adults, ${provider.children} Children, ${provider.infants} Infants'),
              ),
            ),
            const SizedBox(height: 8),
            // Adults Counter
            _buildCounter(
              context,
              label: 'Adults',
              ageInfo: '12+ years',
              count: provider.adults,
              onIncrement: provider.incrementAdults,
              onDecrement: provider.decrementAdults,
            ),
            // Children Counter
            _buildCounter(
              context,
              label: 'Children',
              ageInfo: '2-11 years',
              count: provider.children,
              onIncrement: provider.incrementChildren,
              onDecrement: provider.decrementChildren,
            ),
            // Infants Counter
            _buildCounter(
              context,
              label: 'Infants',
              ageInfo: '<2 years',
              count: provider.infants,
              onIncrement: provider.incrementInfants,
              onDecrement: provider.decrementInfants,
            ),
            const Spacer(),
            // Confirm Button
            ElevatedButton(
              onPressed: () {
                // Handle confirm action
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }

  // Counter Widget for Adults, Children, Infants
  Widget _buildCounter(
    BuildContext context, {
    required String label,
    required String ageInfo,
    required int count,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(ageInfo, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: onDecrement,
                icon: const Icon(Icons.remove),
                color: Colors.purple,
              ),
              Text(
                count.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              IconButton(
                onPressed: onIncrement,
                icon: const Icon(Icons.add),
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
