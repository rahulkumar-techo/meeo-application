import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/products/data/datasoource/products_datasource.dart';
import 'package:meeo/features/products/data/models/search_product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_products_provider.g.dart';

@riverpod
Future<List<ProductItem>> searchProducts(
  Ref ref,
  SearchQueryParams query,
) async {
  try {
    final queryMap = Map<String, dynamic>.from(query.toJson())
      ..removeWhere((key, value) => value == null);

    final response = await ApiClient().get(
      ProductsDatasource.getAllProducts,
      queryParameters: queryMap.isNotEmpty ? queryMap : null,
    );
    log('Search Products API response: ${response.data}');

    List<dynamic> rawList = [];

    if (response.data is Map<String, dynamic>) {
      final map = response.data as Map<String, dynamic>;
      if (map['data'] is Map<String, dynamic>) {
        final dataMap = map['data'] as Map<String, dynamic>;
        if (dataMap['items'] is List) {
          rawList = dataMap['items'] as List;
        }
      } else if (map['data'] is List) {
        rawList = map['data'] as List;
      } else if (map['items'] is List) {
        rawList = map['items'] as List;
      }
    } else if (response.data is List) {
      rawList = response.data as List;
    }

    final List<ProductItem> results = [];
    for (final raw in rawList) {
      if (raw is Map<String, dynamic>) {
        try {
          results.add(ProductItem.fromJson(raw));
        } catch (itemError) {
          log('Error parsing product item: $itemError', error: itemError);
        }
      }
    }

    return results;
  } catch (e, stackTrace) {
    log('Failed to search products: $e', error: e, stackTrace: stackTrace);
    rethrow;
  }
}
