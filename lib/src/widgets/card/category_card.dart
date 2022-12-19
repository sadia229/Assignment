import 'package:flutter/material.dart';
import 'package:pizza/src/core/extensions/extension.dart';

import '../../core/typography/text_style.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback tap;
  final Color selectColor;
  final String image;
  final String title;

  const CategoryCard({
    Key? key,
    required this.tap,
    required this.selectColor,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        margin: const EdgeInsets.only(right: 24),
        padding: const EdgeInsets.all(11),
        width: context.screenWidth * 0.3,
        decoration: BoxDecoration(
          color: selectColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 58,
              width: context.screenWidth,
            ),
            const SizedBox(height: 12),
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: KTextStyle.headline3.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
