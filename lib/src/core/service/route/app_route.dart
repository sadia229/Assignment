import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza/src/feature/products/view/products_page.dart';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ProductsPage();
      },
      routes: const <RouteBase>[],
    ),
  ],
);
