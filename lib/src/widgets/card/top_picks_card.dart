import 'package:flutter/material.dart';
import 'package:pizza/src/core/colors/colors.dart';
import 'package:pizza/src/core/extensions/extension.dart';
import 'package:pizza/src/core/typography/text_style.dart';

class TopPicksCard extends StatelessWidget {
  final VoidCallback tap;
  final Color tapColor;
  final String title;
  final String category;
  final String price;

  const TopPicksCard({
    Key? key,
    required this.tap,
    required this.tapColor,
    required this.title,
    required this.category,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      width: context.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: KColor.card,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('lib/src/core/assets/images/pizza.png'),
              IconButton(
                onPressed: tap,
                icon: const Icon(Icons.favorite),
                color: tapColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: KTextStyle.title1.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  category,
                  style: KTextStyle.title2.copyWith(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style:
                          KTextStyle.headline2.copyWith(color: KColor.appBar),
                    ),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: KColor.appBar,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
