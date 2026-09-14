// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartResponse _$CartResponseFromJson(Map<String, dynamic> json) =>
    _CartResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : CartData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartResponseToJson(_CartResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_CartData _$CartDataFromJson(Map<String, dynamic> json) => _CartData(
  sessionId: json['sessionId'] as String?,
  id: json['id'] as String? ?? '',
  userId: json['userId'] as String?,
  isGuest: json['isGuest'] as bool? ?? false,
  expiresAt: json['expiresAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  summary: json['summary'] == null
      ? null
      : CartSummary.fromJson(json['summary'] as Map<String, dynamic>),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CartDataToJson(_CartData instance) => <String, dynamic>{
  'sessionId': instance.sessionId,
  'id': instance.id,
  'userId': instance.userId,
  'isGuest': instance.isGuest,
  'expiresAt': instance.expiresAt,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'summary': instance.summary,
  'items': instance.items,
};

_CartSummary _$CartSummaryFromJson(Map<String, dynamic> json) => _CartSummary(
  itemCount: (json['itemCount'] as num?)?.toInt() ?? 0,
  totalItems: (json['totalItems'] as num?)?.toInt() ?? 0,
  subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0.0,
  currency: json['currency'] as String? ?? 'USD',
);

Map<String, dynamic> _$CartSummaryToJson(_CartSummary instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'totalItems': instance.totalItems,
      'subtotal': instance.subtotal,
      'currency': instance.currency,
    };

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      id: json['id'] as String? ?? '',
      variantId: json['variantId'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      unitPrice: (json['unitPrice'] as num?)?.toDouble() ?? 0.0,
      compareAtPrice: (json['compareAtPrice'] as num?)?.toDouble(),
      lineTotal: (json['lineTotal'] as num?)?.toDouble() ?? 0.0,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      stockInfo: json['stockInfo'] == null
          ? null
          : StockInfoModel.fromJson(json['stockInfo'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : CartProductModel.fromJson(json['product'] as Map<String, dynamic>),
      variant: json['variant'] == null
          ? null
          : CartVariantModel.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantId': instance.variantId,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'compareAtPrice': instance.compareAtPrice,
      'lineTotal': instance.lineTotal,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'stockInfo': instance.stockInfo,
      'product': instance.product,
      'variant': instance.variant,
    };

_StockInfoModel _$StockInfoModelFromJson(Map<String, dynamic> json) =>
    _StockInfoModel(
      availableStock: (json['availableStock'] as num?)?.toInt() ?? 0,
      isAvailable: json['isAvailable'] as bool? ?? true,
      isLowStock: json['isLowStock'] as bool? ?? false,
    );

Map<String, dynamic> _$StockInfoModelToJson(_StockInfoModel instance) =>
    <String, dynamic>{
      'availableStock': instance.availableStock,
      'isAvailable': instance.isAvailable,
      'isLowStock': instance.isLowStock,
    };

_CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) =>
    _CartProductModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String?,
      thumbnail: json['thumbnail'] as String?,
      category: json['category'] == null
          ? null
          : CartCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
      brand: json['brand'] == null
          ? null
          : CartBrandModel.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartProductModelToJson(_CartProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'thumbnail': instance.thumbnail,
      'category': instance.category,
      'brand': instance.brand,
    };

_CartCategoryModel _$CartCategoryModelFromJson(Map<String, dynamic> json) =>
    _CartCategoryModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$CartCategoryModelToJson(_CartCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_CartBrandModel _$CartBrandModelFromJson(Map<String, dynamic> json) =>
    _CartBrandModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$CartBrandModelToJson(_CartBrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_CartVariantModel _$CartVariantModelFromJson(Map<String, dynamic> json) =>
    _CartVariantModel(
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      attributes:
          (json['attributes'] as List<dynamic>?)
              ?.map(
                (e) => CartVariantAttributeModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CartVariantModelToJson(_CartVariantModel instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'barcode': instance.barcode,
      'attributes': instance.attributes,
    };

_CartVariantAttributeModel _$CartVariantAttributeModelFromJson(
  Map<String, dynamic> json,
) => _CartVariantAttributeModel(
  attribute: json['attribute'] as String? ?? '',
  value: json['value'] as String? ?? '',
);

Map<String, dynamic> _$CartVariantAttributeModelToJson(
  _CartVariantAttributeModel instance,
) => <String, dynamic>{
  'attribute': instance.attribute,
  'value': instance.value,
};

_AddToCartModelBody _$AddToCartModelBodyFromJson(Map<String, dynamic> json) =>
    _AddToCartModelBody(
      variantId: json['variantId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddToCartModelBodyToJson(_AddToCartModelBody instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'quantity': instance.quantity,
    };
