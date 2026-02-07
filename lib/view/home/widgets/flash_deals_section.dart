import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/flash_deals_card.dart';

import '../../../animation/fade_slide_widget.dart';

class FlashDealsSection extends StatelessWidget {
  const FlashDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: const DecorationImage(
            image: AssetImage("assets/icons/icon_flash_deal.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.black.withOpacity(0.7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeSlideWidget(
                      delay: const Duration(milliseconds: 120),
                      child: const Text(
                        "Flash Deals",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    FadeSlideWidget(
                      delay: const Duration(milliseconds: 180),
                      child: const Text(
                        "Every day, we bring you 3 world-class\nunbeatable hotel offers!",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                  ],
                ),
              ),
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 16),
                    FadeSlideWidget(
                      delay: const Duration(milliseconds: 220),
                      child: const FlashDealsCard(
                        image: "assets/icons/icon_home_image.png",
                        dealDate: "Deals from 07/09/2025 to 07/31/2025",
                        title: "Millennium Plaza Downtown Hotel, Dubai",
                        location: "Dubai, United Arab Emirates",
                        rating: "4.5",
                      ),
                    ),
                    FadeSlideWidget(
                      delay: const Duration(milliseconds: 280),
                      child: const FlashDealsCard(
                        image: "assets/icons/icon_home_image.png",
                        dealDate: "Deals from 07/09/2025 to 07/31/2025",
                        title: "Millennium Plaza Downtown Hotel, Dubai",
                        location: "Dubai, United Arab Emirates",
                        rating: "4.5",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
