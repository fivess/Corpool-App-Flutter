import 'package:corpool_flutter/components/search_bar.dart';
import 'package:corpool_flutter/components/title.dart';
import 'package:corpool_flutter/components/travel_item.dart';
import 'package:flutter/material.dart';

class SearchRide extends StatefulWidget {
  const SearchRide({super.key});

  @override
  State<SearchRide> createState() => _SearchRideState();
}

class _SearchRideState extends State<SearchRide> {
  final travelOptions = [
    const TravelItem(
        location: "Sao Paulo",
        date: "2022-01-01",
        time: "19:45",
        price: "R\$ 50,00"),
    const TravelItem(
      location: 'ARCA FIAP',
      date: '28 de Outubro de 2023',
      time: '14:00',
      price: 'Free (só os melhores)',
      textColor: Colors.black,
      backgroundColor: Colors.pink,
    ),
    const TravelItem(
        location: "Sao Paulo",
        date: "2022-01-01",
        time: "19:45",
        price: "R\$ 50,00"),
    const TravelItem(
        location: "Sao Paulo",
        date: "2022-01-01",
        time: "19:45",
        price: "R\$ 50,00"),
  ];

  List<TravelItem> filteredTravelOptions = [];

  @override
  void initState() {
    super.initState();
    filteredTravelOptions = travelOptions;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderTitle(title: "Search Ride"),
        Padding(
            padding: const EdgeInsets.all(5.0),
            child: TravelSearchBar(searchAction: (value) {
              setState(() {
                if (value.isEmpty) {
                  filteredTravelOptions = travelOptions;
                } else {
                  filteredTravelOptions = travelOptions
                      .where((element) => element.location
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                }
              });
            })),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            itemCount: filteredTravelOptions.length,
            itemBuilder: (context, index) {
              return filteredTravelOptions[index];
            },
          ),
        )
      ],
    );
  }
}
