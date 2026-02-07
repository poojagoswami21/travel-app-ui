import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/life_experience_card.dart';

import '../../../animation/fade_slide_widget.dart';

class LifeExperienceSection extends StatelessWidget {
  const LifeExperienceSection({super.key});

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
                  "Life Experience®",
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
                  "Discover the magic of a Life Experience.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
        SizedBox(
          height: 370,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 16),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 200),
                child: const LifeExperienceCard(
                  image: "assets/icons/icon_cruise_image.png",
                  title: "Mediterranean Cruise Experience",
                  date: "Starts 2nd Nov 2025",
                  duration: "8 Days 7 Nights",
                  price: "\$699",
                ),
              ),
              const SizedBox(width: 12),
              FadeSlideWidget(
                delay: const Duration(milliseconds: 280),
                child: const LifeExperienceCard(
                  image: "assets/icons/icon_cruise_image.png",
                  title: "Mediterranean Cruise Experience",
                  date: "Starts 2nd Nov 2025",
                  duration: "8 Days 7 Nights",
                  price: "\$699",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        FadeSlideWidget(
          delay: const Duration(milliseconds: 320),
          child: Center(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: const Center(
                child: Text(
                  "Explore more",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
