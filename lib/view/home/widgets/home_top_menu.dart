import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class HomeTopMenu extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"icon": "assets/icons/icon_hotel.png", "label": "Hotels"},
    {"icon": "assets/icons/icon_flight.png", "label": "Flights"},
    {"icon": "assets/icons/icon_life.png", "label": "Life\nExperience"},
    {"icon": "assets/icons/icon_car.png", "label": "Cars"},
    {"icon": "assets/icons/icon_cruises.png", "label": "Cruises"},
  ];

  HomeTopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

    return SizedBox(
      height: 80,
      child: Row(
        children: List.generate(items.length, (index) {
          bool isSelected = provider.selectedMenuIndex == index;
          final item = items[index];

          return GestureDetector(
            onTap: () => provider.updateSelectedMenu(index),
            child: Container(
              width: 75,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? Colors.black26 : Colors.transparent,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    item["icon"]!,
                    height: 28,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["label"]!,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 10,
                      height: 1.1,
                      fontWeight:
                      isSelected ? FontWeight.bold : FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
