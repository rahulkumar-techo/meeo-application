import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/products/data/datasoource/products_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:meeo/features/products/data/models/product_model.dart';

part 'product_details_provider.g.dart';

@riverpod
Future<ProductModel> productDetails(Ref ref, String productId) async {
  try {
    final response = await ApiClient().get(
      ProductsDatasource.getProduct(productId),
    );
    log('Product Details API response: ${response.data}');

    if (response.data is Map<String, dynamic>) {
      final map = response.data as Map<String, dynamic>;
      if (map['data'] is Map<String, dynamic>) {
        return ProductModel.fromJson(map['data'] as Map<String, dynamic>);
      }
      return ProductModel.fromJson(map);
    }

    throw Exception('Invalid product response structure');
  } catch (e, stackTrace) {
    log(
      'Failed to fetch product details ($productId): $e',
      error: e,
      stackTrace: stackTrace,
    );
    rethrow;
  }
}
