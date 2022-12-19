import 'package:pizza/src/core/base/base_state.dart';
import 'package:pizza/src/feature/home/model/product_model.dart';

class CategorySuccessState extends SuccessState {
  final Products? products;

  const CategorySuccessState(this.products);
}
