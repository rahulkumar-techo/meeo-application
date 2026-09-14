import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/products/data/datasoource/products_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:meeo/features/products/data/models/product_model.dart';

part 'product_provider.g.dart';

@riverpod
Future<List<ProductModel>> products(Ref ref) async {
  try {
    final response = await ApiClient().get(ProductsDatasource.getAllProducts);
    log('Products API response: ${response.data}');

    if (response.data is Map<String, dynamic>) {
      final map = response.data as Map<String, dynamic>;
      if (map['data'] is Map<String, dynamic> && map['data']['items'] is List) {
        return ProductResponse.fromJson(map).data.items;
      } else if (map['data'] is List) {
        return (map['data'] as List)
            .map((item) => ProductModel.fromJson(item as Map<String, dynamic>))
            .toList();
      }
    } else if (response.data is List) {
      return (response.data as List)
          .map((item) => ProductModel.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    return [];
  } catch (e, stackTrace) {
    log('Failed to fetch products: $e', error: e, stackTrace: stackTrace);
    rethrow;
  }
}
