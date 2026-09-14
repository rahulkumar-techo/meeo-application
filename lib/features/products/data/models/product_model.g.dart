// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    _ProductResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      data: ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseToJson(_ProductResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_ProductData _$ProductDataFromJson(Map<String, dynamic> json) => _ProductData(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  total: (json['total'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductDataToJson(_ProductData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      status:
          $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.active,
      isFeatured: json['isFeatured'] as bool? ?? false,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      createdById: json['createdById'] as String?,
      seoTitle: json['seoTitle'] as String?,
      seoDescription: json['seoDescription'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      variants:
          (json['variants'] as List<dynamic>?)
              ?.map(
                (e) => ProductVariantModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      count: json['_count'] == null
          ? null
          : ProductCountModel.fromJson(json['_count'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'status': _$ProductStatusEnumMap[instance.status]!,
      'isFeatured': instance.isFeatured,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'createdById': instance.createdById,
      'seoTitle': instance.seoTitle,
      'seoDescription': instance.seoDescription,
      'category': instance.category,
      'brand': instance.brand,
      'images': instance.images,
      'variants': instance.variants,
      '_count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.draft: 'DRAFT',
  ProductStatus.active: 'ACTIVE',
  ProductStatus.inactive: 'INACTIVE',
  ProductStatus.archived: 'ARCHIVED',
};

_ProductVariantModel _$ProductVariantModelFromJson(Map<String, dynamic> json) =>
    _ProductVariantModel(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as String?,
      compareAtPrice: json['compareAtPrice'] as String?,
      costPrice: json['costPrice'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      attributeValues:
          (json['attributeValues'] as List<dynamic>?)
              ?.map(
                (e) => VariantAttributeValueModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductVariantModelToJson(
  _ProductVariantModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'sku': instance.sku,
  'barcode': instance.barcode,
  'price': instance.price,
  'compareAtPrice': instance.compareAtPrice,
  'costPrice': instance.costPrice,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'attributeValues': instance.attributeValues,
};

_VariantAttributeValueModel _$VariantAttributeValueModelFromJson(
  Map<String, dynamic> json,
) => _VariantAttributeValueModel(
  variantId: json['variantId'] as String?,
  attributeValueId: json['attributeValueId'] as String?,
  attributeValue: json['attributeValue'] == null
      ? null
      : AttributeValueModel.fromJson(
          json['attributeValue'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$VariantAttributeValueModelToJson(
  _VariantAttributeValueModel instance,
) => <String, dynamic>{
  'variantId': instance.variantId,
  'attributeValueId': instance.attributeValueId,
  'attributeValue': instance.attributeValue,
};

_AttributeValueModel _$AttributeValueModelFromJson(Map<String, dynamic> json) =>
    _AttributeValueModel(
      id: json['id'] as String?,
      attributeId: json['attributeId'] as String?,
      value: json['value'] as String?,
      attribute: json['attribute'] == null
          ? null
          : AttributeModel.fromJson(json['attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributeValueModelToJson(
  _AttributeValueModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'attributeId': instance.attributeId,
  'value': instance.value,
  'attribute': instance.attribute,
};

_AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    _AttributeModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$AttributeModelToJson(_AttributeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt,
    };

_ProductCountModel _$ProductCountModelFromJson(Map<String, dynamic> json) =>
    _ProductCountModel(variants: (json['variants'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$ProductCountModelToJson(_ProductCountModel instance) =>
    <String, dynamic>{'variants': instance.variants};

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };

_BrandModel _$BrandModelFromJson(Map<String, dynamic> json) => _BrandModel(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String?,
  logoUrl: json['logoUrl'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$BrandModelToJson(_BrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'logoUrl': instance.logoUrl,
      'description': instance.description,
    };

_ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => _ImageModel(
  id: json['id'] as String?,
  productId: json['productId'] as String?,
  fileId: json['fileId'] as String?,
  url: json['url'] as String,
  altText: json['altText'] as String? ?? '',
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$ImageModelToJson(_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'fileId': instance.fileId,
      'url': instance.url,
      'altText': instance.altText,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt,
    };
