import 'package:flutter/material.dart';

class TravelItem extends StatelessWidget {
  final String location;
  final String date;
  final String time;
  final String price;
  final Color? backgroundColor;
  final Color? textColor;

  const TravelItem({
    super.key,
    required this.location,
    required this.date,
    required this.time,
    required this.price,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: backgroundColor ?? Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: textColor ?? Colors.black),
              const SizedBox(width: 8),
              Text(location,
                  style: TextStyle(color: textColor ?? Colors.black)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.calendar_today, color: textColor ?? Colors.black),
              const SizedBox(width: 8),
              Text(date, style: TextStyle(color: textColor ?? Colors.black)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_time, color: textColor ?? Colors.black),
              const SizedBox(width: 8),
              Text(time, style: TextStyle(color: textColor ?? Colors.black)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.attach_money, color: textColor ?? Colors.black),
              const SizedBox(width: 8),
              Text(price, style: TextStyle(color: textColor ?? Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
