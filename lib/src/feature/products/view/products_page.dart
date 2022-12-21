import 'package:flutter/material.dart';
import 'package:pizza/src/core/colors/colors.dart';
import 'package:pizza/src/core/extensions/extension.dart';
import 'package:pizza/src/feature/home/components/top_picks.dart';
import 'package:pizza/src/widgets/appbar/app_bar.dart';
import 'package:pizza/src/widgets/bottom_navigation/google_navigation.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("lib/src/core/assets/images/bg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              KColor.bg.withOpacity(0.7),
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              KAppBar(),
              SizedBox(height: 20),
              //Category(),
              TopPicks()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const KNavigation(),
    );
  }
}
