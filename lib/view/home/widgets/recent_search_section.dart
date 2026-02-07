import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/provider/home_provider.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/recent_search_card.dart';
import 'package:provider/provider.dart';

import '../../../animation/fade_slide_widget.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final home = Provider.of<HomeProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeSlideWidget(
            delay: const Duration(milliseconds: 100),
            child: const Text(
              "Recent Search",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: home.recentSearches.length,
              itemBuilder: (context, index) {
                final item = home.recentSearches[index];
                return FadeSlideWidget(
                  delay: Duration(milliseconds: 150 + (index * 120)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: index == home.recentSearches.length - 1 ? 0 : 12,
                    ),
                    child: RecentSearchCard(
                      category: item.category,
                      title: item.title,
                      date: item.date,
                      travelers: item.travelers,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
