/// Centralized application route constants (Paths and Names)
abstract final class AppRoutes {
  // Paths
  static const String home = '/';
  static const String productDetails = '/product-details';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String successInfo = '/success-info';
  static const String searchPagePath = '/search-products';

  // Route Names for goNamed / pushNamed
  static const String homeName = 'home';
  static const String productDetailsName = 'product-details';
  static const String cartName = 'cart';
  static const String checkoutName = 'checkout';
  static const String successInfoName = 'success-info';
  static const String searchName = 'search';
}
