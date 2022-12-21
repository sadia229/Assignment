import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pizza/src/core/network/api.dart';
import 'package:pizza/src/core/network/network_utils.dart';
import 'package:pizza/src/feature/home/model/product_model.dart';

/// Providers

final productsProvider = FutureProvider((ref) {
  return Productsrepo().fetchProducts();
});

/// Controllers
class Productsrepo {
  Future fetchProducts() async {
    var responseBody;
    try {
      responseBody =
          await Network.handleResponse(await Network.getRequest(API.products));
      List<Products> products = [];
      if (responseBody != null) {
        for (Map<String, dynamic> product in responseBody) {
          products.add(Products.fromJson(product));
        }
      }
      return products;
    } catch (error, stackTrace) {}
  }
}
