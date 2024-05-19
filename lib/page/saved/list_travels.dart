import 'package:corpool_flutter/components/travel_item.dart';
import 'package:flutter/material.dart';

import '../../components/title.dart';

class SavedTravels extends StatelessWidget {
  SavedTravels({super.key});

  final savedTravels = [
    const TravelItem(
        location: "Sao Paulo",
        date: "2022-01-01",
        time: "19:45",
        price: "R\$ 50,00")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const HeaderTitle(title: "My Rides"),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          itemCount: savedTravels.length,
          itemBuilder: (context, index) {
            return savedTravels[index];
          },
        ),
      )
    ]);
  }
}
