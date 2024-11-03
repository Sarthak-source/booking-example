import 'package:book_app_test/widgets/trip_selection/search_one_way.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/trip_type_provider.dart';

class TripSelectionScreen extends StatelessWidget {
  const TripSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TripTypeProvider>(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Select Trip Type'),
          bottom: TabBar(
            onTap: (index) {
              // Update the trip type based on the selected tab
              switch (index) {
                case 0:
                  provider.setTripType('One-Way');
                  break;
                case 1:
                  provider.setTripType('Round-Trip');
                  break;
                case 2:
                  provider.setTripType('Multi-City');
                  break;
              }
            },
            tabs: const [
              Tab(text: 'One-Way'),
              Tab(text: 'Round-Trip'),
              Tab(text: 'Multi-City'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
                child: SearchOneWay(
              origin: 'New Delhi',
              destination: 'Madrid',
              searchOneWayType: '',
            )),
            Center(child: Text('Round-Trip Selected')),
            Center(child: Text('Multi-City Selected')),
          ],
        ),
      ),
    );
  }
}
