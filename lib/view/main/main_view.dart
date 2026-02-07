import 'package:flutter/material.dart';
import 'package:pooja_goswami_flutter_practical_task/view/account/account_view.dart';
import 'package:pooja_goswami_flutter_practical_task/view/trips/trip_view.dart';
import 'package:pooja_goswami_flutter_practical_task/view/wishlist/wishlist_view.dart';

import '../home/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeView(),
    TripView(),
    WishlistView(),
    AccountView(),
  ];


  final List<String> iconPaths = [
    "assets/icons/icon_home.png",
    "assets/icons/icon_trip.png",
    "assets/icons/icon_wishlist.png",
    "assets/icons/icon_profile.png",
  ];


  final List<String> labels = [
    "Home",
    "My trips",
    "wishlist",
    "account",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar() {
    return SizedBox(
      height: 95,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          /// Background Container
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(0, -2),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(2, (i) => _buildTab(i)),
                  const SizedBox(width: 62),
                  ...List.generate(2, (i) => _buildTab(i + 2)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(child: _buildCenterButton()),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(int index) {
    bool isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => setState(() => selectedIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPaths[index],
            width: 26,
            height: 26,
            color: isSelected ? const Color(0xFF5E29CD) : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            labels[index],
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Theme.of(context).primaryColor : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCenterButton() {
    return InkWell(
      onTap: () => setState(() => selectedIndex = 2),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [Color(0xFF13C2C2), Color(0xFF5E29CD)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Icon(
          Icons.wallet_giftcard_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }

}
