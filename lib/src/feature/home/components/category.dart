// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pizza/src/core/colors/colors.dart';
// import 'package:pizza/src/feature/home/components/header.dart';
// import 'package:pizza/src/feature/home/controller/home_controller.dart';
// import 'package:pizza/src/widgets/card/category_card.dart';
//
// class Category extends StatefulWidget {
//   const Category({Key? key}) : super(key: key);
//
//   @override
//   State<Category> createState() => _CategoryState();
// }
//
// class _CategoryState extends State<Category> {
//   int selectIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, _) {
//         final products = ref.watch(productsProvider);
//         return Container(
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//             children: [
//               const HeaderSection(
//                 sectionName: 'Category',
//                 view: 'View all',
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 17),
//                 height: 132,
//                 child: ListView.builder(
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products.length,
//                   itemBuilder: (ctx, index) {
//                     return CategoryCard(
//                       tap: () => setState(() {
//                         selectIndex = index;
//                       }),
//                       selectColor:
//                           index == selectIndex ? KColor.appBar : KColor.card,
//                       image: products[index].image,
//                       title: products[index].title,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
