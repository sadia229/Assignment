import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pizza/src/core/base/base_state.dart';
import 'package:pizza/src/core/network/api.dart';
import 'package:pizza/src/core/network/network_utils.dart';
import 'package:pizza/src/feature/home/model/product_model.dart';

/// Providers
final productsProvider = StateNotifierProvider<ProductsController, BaseState>(
  (ref) => ProductsController(ref: ref),
);


/// Controllers
class ProductsController extends StateNotifier<BaseState> {
  final Ref? ref;

  ProductsController({this.ref}) : super(const InitialState());
  List<Products> products = [];

  Future fetchProducts() async {
    state = const LoadingState();
    var responseBody;
    try {
      responseBody =
          await Network.handleResponse(await Network.getRequest(API.products));
      if (responseBody != null) {
        for (Map<String, dynamic> product in responseBody) {
          products.add(Products.fromJson(product));
        }
      } else {
        const CircularProgressIndicator();
      }
    } catch (error, stackTrace) {
      state = const ErrorState();
    }
  }
}
