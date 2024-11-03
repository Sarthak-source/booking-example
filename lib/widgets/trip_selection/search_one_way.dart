// lib/widgets/SearchOneWay_form.dart

import 'package:flutter/material.dart';

class SearchOneWay extends StatelessWidget {
  final String origin;
  final String destination;
  final String searchOneWayType;

  const SearchOneWay({
    super.key,
    required this.origin,
    required this.destination,
    required this.searchOneWayType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Origin TextField
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.flight_takeoff),
              labelText: origin,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          // Destination TextField
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.flight_land),
              labelText: destination,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          // Currency Dropdown
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Select Currency Code',
              border: OutlineInputBorder(),
            ),
            items: ['USD', 'EUR', 'INR'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              // Handle currency code change
            },
          ),
          const SizedBox(height: 10),
          // Departure Date Picker
          TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.calendar_today),
              labelText: 'Departure',
              border: OutlineInputBorder(),
            ),
            readOnly: true,
            onTap: () {
              // Show date picker
            },
          ),
          const SizedBox(height: 10),
          // Passengers and Class
          TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.usb_rounded),
              labelText: '1 Passenger, ECONOMY',
              border: OutlineInputBorder(),
            ),
            readOnly: true,
            onTap: () {
              // Show passenger and class selection
            },
          ),
          const SizedBox(height: 20),
          // Search Button
          ElevatedButton(
            onPressed: () {
              // Handle search action
                          Navigator.pushNamed(context, '/passenger-selection');



            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}
