import 'package:pizza/src/core/base/base_state.dart';
import 'package:pizza/src/feature/home/model/product_model.dart';

class CategorySuccessState extends SuccessState {
  List<Products> products = [];

   CategorySuccessState(this.products);
}
