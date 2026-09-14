import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

// =============================================================================
// CART API RESPONSE MODEL
// =============================================================================

/// Top-level response wrapper for the Cart API.
@freezed
abstract class CartResponse with _$CartResponse {
  const factory CartResponse({
    @Default(true) bool success,
    @Default('') String message,
    CartData? data,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

// =============================================================================
// CART DATA MODEL
// =============================================================================

/// Represents the active shopping cart entity with session info, items, and summary.
@freezed
abstract class CartData with _$CartData {
  const CartData._();

  const factory CartData({
    /// Unique session identifier
    String? sessionId,

    /// Unique identifier of the cart
    @Default('') String id,

    /// ID of the user owning this cart, or null if guest
    String? userId,

    /// Indicates whether the cart belongs to a guest user
    @Default(false) bool isGuest,

    /// Expiration timestamp of the cart session
    String? expiresAt,

    /// Cart creation timestamp (ISO 8601)
    String? createdAt,

    /// Cart last update timestamp (ISO 8601)
    String? updatedAt,

    /// Summary metadata of total cost, item count, and currency
    CartSummary? summary,

    /// List of cart items
    @Default([]) List<CartItemModel> items,
  }) = _CartData;

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);

  /// Helper to check if the cart has no items
  bool get isEmpty => items.isEmpty;

  /// Helper to check if the cart contains any items
  bool get isNotEmpty => items.isNotEmpty;

  /// Helper to get total number of items
  int get totalItemsCount {
    if (summary != null && summary!.totalItems > 0) {
      return summary!.totalItems;
    }
    return items.fold<int>(0, (sum, item) => sum + item.quantity);
  }
}

// =============================================================================
// CART SUMMARY MODEL
// =============================================================================

/// Represents the cart pricing and quantity summary.
@freezed
abstract class CartSummary with _$CartSummary {
  const CartSummary._();

  const factory CartSummary({
    /// Number of unique line items in the cart
    @Default(0) int itemCount,

    /// Total quantity of all items combined in the cart
    @Default(0) int totalItems,

    /// Subtotal price before discounts or taxes
    @Default(0.0) double subtotal,

    /// ISO currency code (e.g., "USD", "INR")
    @Default('USD') String currency,
  }) = _CartSummary;

  factory CartSummary.fromJson(Map<String, dynamic> json) =>
      _$CartSummaryFromJson(json);

  /// Formatted subtotal with currency symbol (e.g., "$1000.00")
  String get formattedSubtotal => '\$$subtotal';
}

// =============================================================================
// CART ITEM MODEL
// =============================================================================

/// Represents a single product variant entry inside the shopping cart.
@freezed
abstract class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    /// Unique identifier of the cart line item
    @Default('') String id,

    /// ID of the associated product variant
    @Default('') String variantId,

    /// Quantity of this item added to the cart
    @Default(1) int quantity,

    /// Price per unit for this item
    @Default(0.0) double unitPrice,

    /// Original / crossed-out price per unit (if on discount)
    double? compareAtPrice,

    /// Total price for this line item (quantity * unitPrice)
    @Default(0.0) double lineTotal,

    /// Item creation timestamp (ISO 8601)
    String? createdAt,

    /// Item last update timestamp (ISO 8601)
    String? updatedAt,

    /// Real-time stock status and availability info
    StockInfoModel? stockInfo,

    /// Basic product details associated with this item
    CartProductModel? product,

    /// Variant specifications (SKU, barcode, attributes)
    CartVariantModel? variant,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  /// Checks if this item has an active discount compared to original price
  bool get hasDiscount =>
      compareAtPrice != null && compareAtPrice! > unitPrice;

  /// Calculates total savings for this line item based on compareAtPrice
  double get totalSavings {
    if (!hasDiscount || compareAtPrice == null) return 0.0;
    return (compareAtPrice! - unitPrice) * quantity;
  }

  /// Calculates discount percentage (e.g., 44.4%)
  double get discountPercentage {
    if (!hasDiscount || compareAtPrice == null || compareAtPrice == 0) {
      return 0.0;
    }
    return ((compareAtPrice! - unitPrice) / compareAtPrice!) * 100;
  }

  /// Checks if the item is currently available in stock
  bool get isInStock => stockInfo?.isAvailable ?? true;
}

// =============================================================================
// STOCK INFO MODEL
// =============================================================================

/// Represents inventory and availability metrics for a cart item.
@freezed
abstract class StockInfoModel with _$StockInfoModel {
  const factory StockInfoModel({
    /// Available units in inventory
    @Default(0) int availableStock,

    /// Whether the product is currently purchasable/in stock
    @Default(true) bool isAvailable,

    /// Whether inventory is running low
    @Default(false) bool isLowStock,
  }) = _StockInfoModel;

  factory StockInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StockInfoModelFromJson(json);
}

// =============================================================================
// CART PRODUCT MODEL
// =============================================================================

/// Basic product metadata associated with an item in the cart.
@freezed
abstract class CartProductModel with _$CartProductModel {
  const factory CartProductModel({
    /// Product ID
    @Default('') String id,

    /// Product display name
    @Default('') String name,

    /// URL-friendly slug
    String? slug,

    /// Thumbnail image URL for cart item preview
    String? thumbnail,

    /// Category information
    CartCategoryModel? category,

    /// Brand information
    CartBrandModel? brand,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
}

// =============================================================================
// CART CATEGORY MODEL
// =============================================================================

/// Category details for a cart product item.
@freezed
abstract class CartCategoryModel with _$CartCategoryModel {
  const factory CartCategoryModel({
    @Default('') String id,
    @Default('') String name,
    String? slug,
  }) = _CartCategoryModel;

  factory CartCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CartCategoryModelFromJson(json);
}

// =============================================================================
// CART BRAND MODEL
// =============================================================================

/// Brand details for a cart product item.
@freezed
abstract class CartBrandModel with _$CartBrandModel {
  const factory CartBrandModel({
    @Default('') String id,
    @Default('') String name,
    String? slug,
  }) = _CartBrandModel;

  factory CartBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CartBrandModelFromJson(json);
}

// =============================================================================
// CART VARIANT MODEL & ATTRIBUTES
// =============================================================================

/// Specific variant attributes (SKU, barcode, attribute list) for a cart item.
@freezed
abstract class CartVariantModel with _$CartVariantModel {
  const CartVariantModel._();

  const factory CartVariantModel({
    /// Stock Keeping Unit
    String? sku,

    /// Barcode string
    String? barcode,

    /// Key-value attribute list (e.g., Color: Black, Material: Aluminium)
    @Default([]) List<CartVariantAttributeModel> attributes,
  }) = _CartVariantModel;

  factory CartVariantModel.fromJson(Map<String, dynamic> json) =>
      _$CartVariantModelFromJson(json);

  /// Helper to format attributes as a single readable label (e.g. "Material: Aluminium • Color: Black")
  String get formattedAttributes => attributes
      .where((attr) => attr.attribute.isNotEmpty && attr.value.isNotEmpty)
      .map((attr) => '${attr.attribute}: ${attr.value}')
      .join(' • ');
}

/// Represents an individual attribute key-value pair of a variant.
@freezed
abstract class CartVariantAttributeModel with _$CartVariantAttributeModel {
  const factory CartVariantAttributeModel({
    @Default('') String attribute,
    @Default('') String value,
  }) = _CartVariantAttributeModel;

  factory CartVariantAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$CartVariantAttributeModelFromJson(json);
}

// =============================================================================
// REQUEST BODIES (PAYLOADS)
// =============================================================================

/// Request body model for adding an item to the cart.
@freezed
abstract class AddToCartModelBody with _$AddToCartModelBody {
  const factory AddToCartModelBody({
    required String variantId,
    required int quantity,
  }) = _AddToCartModelBody;

  factory AddToCartModelBody.fromJson(Map<String, dynamic> json) =>
      _$AddToCartModelBodyFromJson(json);
}