import 'dart:async';
import 'dart:developer';

import 'package:meeo/core/network/api_client.dart';
import 'package:meeo/features/cart/data/datasource/cart_datasource.dart';
import 'package:meeo/features/cart/data/model/cart_model.dart';
import 'package:meeo/features/cart/presentations/provider/cart_lists.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

/// State representation for Cart operations and in-flight item actions.
class CartOperationState {
  final bool isGlobalLoading;
  final Set<String> updatingItemIds;
  final String? errorMessage;

  const CartOperationState({
    this.isGlobalLoading = false,
    this.updatingItemIds = const <String>{},
    this.errorMessage,
  });

  bool isItemUpdating(String itemId) => updatingItemIds.contains(itemId);

  CartOperationState copyWith({
    bool? isGlobalLoading,
    Set<String>? updatingItemIds,
    String? errorMessage,
  }) {
    return CartOperationState(
      isGlobalLoading: isGlobalLoading ?? this.isGlobalLoading,
      updatingItemIds: updatingItemIds ?? this.updatingItemIds,
      errorMessage: errorMessage,
    );
  }
}

/// Controller managing Cart mutation operations (Update Quantity, Delete, Add).
@riverpod
class CartController extends _$CartController {
  @override
  CartOperationState build() {
    return const CartOperationState();
  }

  /// Adds a product variant to the cart.
  Future<bool> addToCart({
    required String variantId,
    required int quantity,
  }) async {
    state = state.copyWith(isGlobalLoading: true, errorMessage: null);
    try {
      final payload = AddToCartModelBody(
        variantId: variantId,
        quantity: quantity,
      ).toJson();

      final response = await ApiClient().post(
        CartDatasource.createCartItems,
        data: payload,
      );
      log('Add to cart response: ${response.data}');

      // Refresh cart list
      ref.invalidate(cartListsProvider);
      state = state.copyWith(isGlobalLoading: false);
      return true;
    } catch (e, stackTrace) {
      log('Failed to add to cart: $e', error: e, stackTrace: stackTrace);
      state = state.copyWith(
        isGlobalLoading: false,
        errorMessage: 'Failed to add item to cart',
      );
      return false;
    }
  }

  /// Updates quantity for a specific cart item via PATCH /cart/items/:id.
  /// Prevents spamming and continuous rapid updates while request is in flight.
  Future<bool> updateQuantity({
    required String cartItemId,
    required int newQuantity,
  }) async {
    // Prevent duplicate triggers if item is already updating
    if (state.isItemUpdating(cartItemId)) return false;

    // If quantity is 0 or less, delegate to delete
    if (newQuantity <= 0) {
      return deleteCartItem(cartItemId);
    }

    final newUpdating = Set<String>.from(state.updatingItemIds)..add(cartItemId);
    state = state.copyWith(updatingItemIds: newUpdating, errorMessage: null);

    try {
      final response = await ApiClient().patch(
        CartDatasource.updateCartItem(cartItemId),
        data: {'quantity': newQuantity},
      );
      log('Update quantity response: ${response.data}');

      // Refresh cart list
      ref.invalidate(cartListsProvider);

      final updatedSet = Set<String>.from(state.updatingItemIds)
        ..remove(cartItemId);
      state = state.copyWith(updatingItemIds: updatedSet);
      return true;
    } catch (e, stackTrace) {
      log('Failed to update quantity: $e', error: e, stackTrace: stackTrace);
      final updatedSet = Set<String>.from(state.updatingItemIds)
        ..remove(cartItemId);
      state = state.copyWith(
        updatingItemIds: updatedSet,
        errorMessage: 'Failed to update item quantity',
      );
      return false;
    }
  }

  /// Removes an individual cart line item via DELETE /cart/items/:id.
  Future<bool> deleteCartItem(String cartItemId) async {
    if (state.isItemUpdating(cartItemId)) return false;

    final newUpdating = Set<String>.from(state.updatingItemIds)..add(cartItemId);
    state = state.copyWith(updatingItemIds: newUpdating, errorMessage: null);

    try {
      final response = await ApiClient().delete(
        CartDatasource.deleteCartItem(cartItemId),
      );
      log('Delete cart item response: ${response.data}');

      // Refresh cart list
      ref.invalidate(cartListsProvider);

      final updatedSet = Set<String>.from(state.updatingItemIds)
        ..remove(cartItemId);
      state = state.copyWith(updatingItemIds: updatedSet);
      return true;
    } catch (e, stackTrace) {
      log('Failed to delete cart item: $e', error: e, stackTrace: stackTrace);
      final updatedSet = Set<String>.from(state.updatingItemIds)
        ..remove(cartItemId);
      state = state.copyWith(
        updatingItemIds: updatedSet,
        errorMessage: 'Failed to remove item',
      );
      return false;
    }
  }

  /// Clears the entire cart via DELETE /cart.
  Future<bool> clearAllItems() async {
    state = state.copyWith(isGlobalLoading: true, errorMessage: null);
    try {
      await ApiClient().delete(CartDatasource.delAllCartItems);
      ref.invalidate(cartListsProvider);
      state = state.copyWith(isGlobalLoading: false);
      return true;
    } catch (e, stackTrace) {
      log('Failed to clear cart: $e', error: e, stackTrace: stackTrace);
      state = state.copyWith(
        isGlobalLoading: false,
        errorMessage: 'Failed to clear cart',
      );
      return false;
    }
  }
}
