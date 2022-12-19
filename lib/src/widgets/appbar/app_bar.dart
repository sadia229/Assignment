import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza/src/core/colors/colors.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 86,
      backgroundColor: KColor.appBar,
      elevation: 0,
      centerTitle: true,
      title: SvgPicture.asset('lib/src/core/assets/images/logo.svg'),
    );
  }
}
