import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/trending_card.dart';

import '../../../animation/fade_slide_widget.dart';

class TrendingSection extends StatelessWidget {

  const TrendingSection({
    super.key,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeSlideWidget(
                delay: const Duration(milliseconds: 100),
                child: const Text(
                  "Hot & Trending",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 160),
                child: const Text(
                  "We bring exclusive offers for The Club members, daily.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 220),
                child: Row(
                  children: [
                    _tabButton("The Club Select", true, context),
                    const SizedBox(width: 20),
                    _tabButton("The Club Hotel", false, context),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        SizedBox(
          height: 310,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 16),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 260),
                child: const TrendingCard(
                  image: "assets/icons/icon_hotel_image.png",
                  title: "Bali Seascape Beach Club-Rental",
                  location: "Candidasa, Indonesia",
                  badgeImage: "assets/icons/icon_loyalty.png",
                  rating: "4.5",
                ),
              ),
              const SizedBox(width: 12),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 350),
                child: const TrendingCard(
                  image: "assets/icons/icon_hotel_image.png",
                  title: "Bali Seascape Beach Club-Rental",
                  location: "Candidasa, Indonesia",
                  badgeImage: "assets/icons/icon_loyalty.png",
                  rating: "4.5",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabButton(String label, bool active, BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: active ? Theme.of(context).primaryColor : Colors.black54,
          ),
        ),
        const SizedBox(height: 4),
        if (active)
          Container(
            height: 3,
            width: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(2),
            ),
          )
      ],
    );
  }

}
