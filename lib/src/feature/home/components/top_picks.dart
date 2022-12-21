import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pizza/src/core/extensions/extension.dart';
import 'package:pizza/src/feature/home/components/header.dart';
import 'package:pizza/src/feature/home/controller/home_controller.dart';
import 'package:pizza/src/widgets/card/top_picks_card.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final products = ref.watch(productsProvider);
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const HeaderSection(
                sectionName: 'Top picks',
                view: '',
              ),
              products.when(
                data: (data) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 17),
                    height: context.screenHeight * 0.35,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (ctx, index) {
                        return TopPicksCard(
                          tap: () {},
                          tapColor: Colors.white,
                          title: data[index].title,
                          category: data[index].category,
                          price: data[index].price.toString(),
                        );
                      },
                    ),
                  );
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const CircularProgressIndicator(),
              )
            ],
          ),
        );
      },
    );
  }
}
