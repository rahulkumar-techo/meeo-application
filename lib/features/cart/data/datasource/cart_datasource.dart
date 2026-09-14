abstract class CartDatasource {
  CartDatasource._(); // Prevents instantiation


  // Query Endpoints (GET)
  // ─────────────────────────────────────────────────────────
  
  /// Fetches all active items in the current shopping cart (Guest or Authenticated User).
  static const String getAllCartItems = '/cart';

  // Command Endpoints (POST / PATCH / DELETE)
  // ─────────────────────────────────────────────────────────

  /// Adds a new product item to the shopping cart.
  static const String createCartItems = '/cart/items';

  /// Merges anonymous guest items into the user's permanent cart post-login.
  static const String mergeCartAfterLogin = '/cart/merge';

  /// Updates the quantity or properties of a specific cart item.
  static String updateCartItem(String cartItemId) => '/cart/items/$cartItemId';

  /// Removes a single specific item from the shopping cart.
  static String deleteCartItem(String cartItemId) => '/cart/items/$cartItemId';

  /// Clears all items and resets the shopping cart.
  static const String delAllCartItems = '/cart';
}
