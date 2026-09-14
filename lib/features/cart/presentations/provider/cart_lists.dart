import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/cart/data/datasource/cart_datasource.dart';
import 'package:meeo/features/cart/data/model/cart_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_lists.g.dart';

/// Provider to fetch the active shopping cart and its item list.
@riverpod
Future<CartResponse> cartLists(Ref ref) async {
  try {
    final response = await ApiClient().get(CartDatasource.getAllCartItems);
    log('Cart Lists API response: ${response.data}');

    if (response.data is Map<String, dynamic>) {
      final map = response.data as Map<String, dynamic>;
      return CartResponse.fromJson(map);
    }

    throw Exception('Invalid cart response structure: expected JSON object');
  } catch (e, stackTrace) {
    log('Failed to fetch Cart Lists: $e', error: e, stackTrace: stackTrace);
    rethrow;
  }
}
