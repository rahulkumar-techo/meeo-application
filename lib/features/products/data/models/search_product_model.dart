import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product_model.freezed.dart';
part 'search_product_model.g.dart';

enum SearchSortBy {
  @JsonValue('status')
  status,
  @JsonValue('name')
  name,
  @JsonValue('createdAt')
  createdAt,
  @JsonValue('updatedAt')
  updatedAt,
}

enum ItemStatus {
  @JsonValue('DRAFT')
  draft,
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
  @JsonValue('ARCHIVED')
  archived,
}

enum SortOrder {
  @JsonValue('asc')
  asc,
  @JsonValue('desc')
  desc,
}

@freezed
abstract class SearchQueryParams with _$SearchQueryParams {
  const factory SearchQueryParams({
    bool? includeArchived,
    int? page,
    int? limit,
    SearchSortBy? sortBy,
    SortOrder? sortOrder,
    String? search,
    String? categoryId,
    String? brandId,
    ItemStatus? status,
    bool? isFeatured,
    String? cursor,
  }) = _SearchQueryParams;

  factory SearchQueryParams.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryParamsFromJson(json);
}

enum ProductStatus {
  @JsonValue('DRAFT')
  draft,
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
  @JsonValue('ARCHIVED')
  archived,
}

@freezed
abstract class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @Default([]) List<ProductItem> items,
    int? totalPages,
    int? totalCount,
    int? total,
    int? page,
    int? limit,
    bool? hasNextPage,
    bool? hasPreviousPage,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
abstract class ProductItem with _$ProductItem {
  const ProductItem._();

  const factory ProductItem({
    String? id,
    String? name,
    String? slug,
    String? description,
    String? categoryId,
    String? brandId,
    String? status,
    @Default(false) bool isFeatured,
    String? seoTitle,
    String? seoDescription,
    String? createdById,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    Brand? brand,
    Category? category,
    @JsonKey(name: '_count') VariantCount? count,
    @Default([]) List<ProductImage> images,
    @Default([]) List<ProductVariant> variants,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);

  double get price {
    if (variants.isEmpty) return 0.0;
    return variants.first.priceValue;
  }

  double? get originalPrice {
    if (variants.isEmpty) return null;
    return variants.first.originalPriceValue;
  }

  String? get primaryImageUrl {
    if (images.isNotEmpty &&
        images.first.url != null &&
        images.first.url!.trim().isNotEmpty) {
      return images.first.url!.trim();
    }
    if (brand?.logoUrl != null && brand!.logoUrl!.trim().isNotEmpty) {
      return brand!.logoUrl!.trim();
    }
    return null;
  }
}

@freezed
abstract class Brand with _$Brand {
  const factory Brand({
    String? id,
    String? name,
    String? slug,
    String? logoUrl,
    String? description,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    String? id,
    String? name,
    String? slug,
    String? description,
    String? imageUrl,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class VariantCount with _$VariantCount {
  const factory VariantCount({@Default(0) int variants}) = _VariantCount;

  factory VariantCount.fromJson(Map<String, dynamic> json) =>
      _$VariantCountFromJson(json);
}

@freezed
abstract class ProductImage with _$ProductImage {
  const factory ProductImage({
    String? id,
    String? productId,
    String? url,
    @Default(0) int sortOrder,
    String? createdAt,
    String? fileId,
    String? altText,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

@freezed
abstract class ProductVariant with _$ProductVariant {
  const ProductVariant._();

  const factory ProductVariant({
    String? id,
    String? sku,
    String? status,
    dynamic price,
    dynamic compareAtPrice,
    dynamic costPrice,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  double get priceValue {
    if (price == null) return 0.0;
    if (price is num) return (price as num).toDouble();
    return double.tryParse(price.toString()) ?? 0.0;
  }

  double? get originalPriceValue {
    if (compareAtPrice == null) return null;
    if (compareAtPrice is num) return (compareAtPrice as num).toDouble();
    return double.tryParse(compareAtPrice.toString());
  }
}
