import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/cart/data/datasource/cart_datasource.dart';
import 'package:meeo/features/cart/data/model/cart_model.dart';
import 'package:meeo/features/cart/presentations/provider/cart_lists.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_to_cart.g.dart';

/// Provider to add an item to the shopping cart by [variantId] and [quantity].
@riverpod
Future<CartResponse> addToCart(
  Ref ref, {
  required String variantId,
  required int quantity,
}) async {
  try {
    final payload = AddToCartModelBody(
      variantId: variantId,
      quantity: quantity,
    ).toJson();

    final response = await ApiClient().post(
      CartDatasource.createCartItems,
      data: payload,
    );
    log('Add to Cart API response: ${response.data}');

    if (response.data is Map<String, dynamic>) {
      final map = response.data as Map<String, dynamic>;
      final result = CartResponse.fromJson(map);

      // Invalidate cart list to automatically trigger a refresh
      ref.invalidate(cartListsProvider);

      return result;
    }

    throw Exception('Invalid add to cart response format');
  } catch (e, stackTrace) {
    log(
      'Failed to add item to cart (variantId: $variantId, quantity: $quantity): $e',
      error: e,
      stackTrace: stackTrace,
    );
    rethrow;
  }
}