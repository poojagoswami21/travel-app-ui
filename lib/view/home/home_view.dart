import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/provider/home_provider.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/flash_deals_section.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/life_experience_section.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/recent_search_section.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/search_form.dart';
import 'package:pooja_goswami_flutter_practical_task/view/home/widgets/trending_section.dart';
import 'package:provider/provider.dart';
import '../../animation/fade_slide_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final home = Provider.of<HomeProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: Image.asset(
          "assets/icons/icon_app_bar.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchForm(),
            const SizedBox(height: 25),
            RecentSearchSection(),
            const SizedBox(height: 25),
            TrendingSection(),
            const SizedBox(height: 25),
            const LifeExperienceSection(),
            const SizedBox(height: 25),
            const FlashDealsSection(),
            const SizedBox(height: 25),
            _buildVisaBanner(),
            const SizedBox(height: 20),
            _buildEsimBanner(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }


  Widget _buildVisaBanner() {
    return FadeSlideWidget(
      delay: const Duration(milliseconds: 200),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Image.asset(
          width: double.infinity,
          "assets/icons/icon_get_start.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildEsimBanner() {
    return FadeSlideWidget(
      delay: const Duration(milliseconds: 280),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Image.asset(
          width: double.infinity,
          "assets/icons/icon_esim_banner.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }




}
