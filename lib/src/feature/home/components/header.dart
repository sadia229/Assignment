import 'package:flutter/material.dart';
import 'package:pizza/src/core/typography/text_style.dart';

class HeaderSection extends StatelessWidget {
  final String sectionName;
  final String view;

  const HeaderSection({
    Key? key,
    required this.sectionName,
    required this.view,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionName,
          style: KTextStyle.headline2.copyWith(color: Colors.white),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            view,
            style: KTextStyle.headline3.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
