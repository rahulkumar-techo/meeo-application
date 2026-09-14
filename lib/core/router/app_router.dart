import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/router/route_names.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/pages/product_details.dart';
import 'package:meeo/features/products/presentation/pages/products_page.dart';
import 'package:meeo/features/products/presentation/pages/search_products.dart';

/// Global application GoRouter configuration
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.homeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ProductsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.searchPagePath,
      name: AppRoutes.searchName,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchProducts();
      },
    ),
    GoRoute(
      path: AppRoutes.productDetails,
      name: AppRoutes.productDetailsName,
      builder: (BuildContext context, GoRouterState state) {
        if (state.extra is ProductModel) {
          return ProductDetailsPage(product: state.extra as ProductModel);
        } else if (state.extra is String) {
          return ProductDetailsPage(productId: state.extra as String);
        } else if (state.extra is Map<String, dynamic>) {
          final map = state.extra as Map<String, dynamic>;
          return ProductDetailsPage(
            productId: map['productId'] as String? ?? map['id'] as String?,
          );
        }
        return const ProductDetailsPage();
      },
    ),
  ],
);
