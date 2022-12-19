import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../core/colors/colors.dart';

class KNavigation extends StatelessWidget {
  const KNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      child: GNav(
        gap: 8,
        iconSize: 30,
        backgroundColor: KColor.appBar,
        color: Colors.white,
        activeColor: KColor.appBar,
        tabBackgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
        tabMargin: EdgeInsets.symmetric(horizontal: 5),
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.favorite),
          GButton(icon: Icons.shopping_bag),
          GButton(icon: Icons.person_outline_rounded)
        ],
      ),
    );
  }
}
