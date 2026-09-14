import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

/// Product Status Enum mapped from JSON string values
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
    @Default(true) bool success,
    @Default('') String message,
    required ProductData data,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
abstract class ProductData with _$ProductData {
  const factory ProductData({
    @Default([]) List<ProductModel> items,
    int? total,
    int? page,
    int? limit,
    int? totalPages,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
abstract class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    String? id,
    required String name,
    String? slug,
    String? description,
    @Default(ProductStatus.active) ProductStatus status,
    @Default(false) bool isFeatured,
    String? categoryId,
    String? brandId,
    String? createdById,
    String? seoTitle,
    String? seoDescription,
    CategoryModel? category,
    BrandModel? brand,
    @Default([]) List<ImageModel> images,
    @Default([]) List<ProductVariantModel> variants,
    @JsonKey(name: '_count') ProductCountModel? count,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  /// Helper to get the primary price as double from the first variant
  double get price {
    if (variants.isEmpty) return 0.0;
    return double.tryParse(variants.first.price ?? '') ?? 0.0;
  }

  /// Helper to get compareAtPrice as double from the first variant
  double? get originalPrice {
    if (variants.isEmpty) return null;
    final val = variants.first.compareAtPrice;
    if (val == null || val.isEmpty) return null;
    return double.tryParse(val);
  }

  /// Helper to get primary image URL
  String? get primaryImageUrl {
    if (images.isNotEmpty && images.first.url.trim().isNotEmpty) {
      return images.first.url.trim();
    }
    if (brand?.logoUrl != null && brand!.logoUrl!.trim().isNotEmpty) {
      return brand!.logoUrl!.trim();
    }
    return null;
  }
}

@freezed
abstract class ProductVariantModel with _$ProductVariantModel {
  const ProductVariantModel._();

  const factory ProductVariantModel({
    String? id,
    String? productId,
    String? sku,
    String? barcode,
    String? price,
    String? compareAtPrice,
    String? costPrice,
    String? status,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<VariantAttributeValueModel> attributeValues,
  }) = _ProductVariantModel;

  factory ProductVariantModel.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantModelFromJson(json);

  /// Helper to get formatted attributes label like "Color: Black • Size: Medium"
  String get attributesLabel {
    if (attributeValues.isEmpty) return sku ?? 'Default';
    return attributeValues
        .map(
          (av) =>
              '${av.attributeValue?.attribute?.name ?? ''}: ${av.attributeValue?.value ?? ''}'
                  .trim(),
        )
        .where((text) => text.isNotEmpty && text != ':')
        .join(' • ');
  }
}

@freezed
abstract class VariantAttributeValueModel with _$VariantAttributeValueModel {
  const factory VariantAttributeValueModel({
    String? variantId,
    String? attributeValueId,
    AttributeValueModel? attributeValue,
  }) = _VariantAttributeValueModel;

  factory VariantAttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$VariantAttributeValueModelFromJson(json);
}

@freezed
abstract class AttributeValueModel with _$AttributeValueModel {
  const factory AttributeValueModel({
    String? id,
    String? attributeId,
    String? value,
    AttributeModel? attribute,
  }) = _AttributeValueModel;

  factory AttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeValueModelFromJson(json);
}

@freezed
abstract class AttributeModel with _$AttributeModel {
  const factory AttributeModel({String? id, String? name, String? createdAt}) =
      _AttributeModel;

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);
}

@freezed
abstract class ProductCountModel with _$ProductCountModel {
  const factory ProductCountModel({@Default(0) int variants}) =
      _ProductCountModel;

  factory ProductCountModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCountModelFromJson(json);
}

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    String? slug,
    String? description,
    String? imageUrl,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
abstract class BrandModel with _$BrandModel {
  const factory BrandModel({
    required String id,
    required String name,
    String? slug,
    String? logoUrl,
    String? description,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

@freezed
abstract class ImageModel with _$ImageModel {
  const factory ImageModel({
    String? id,
    String? productId,
    String? fileId,
    required String url,
    @Default('') String altText,
    @Default(0) int sortOrder,
    String? createdAt,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
