import 'package:flutter/material.dart';

class TravelSearchBar extends StatelessWidget {
  final void Function(String) searchAction;

  const TravelSearchBar({super.key, required this.searchAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add padding around the search bar
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // Use a Material design search bar
      child: TextFormField(
        onChanged: searchAction,
        decoration: InputDecoration(
          hintText: 'Search address...',
          // Add a search icon or button to the search bar
          prefixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
