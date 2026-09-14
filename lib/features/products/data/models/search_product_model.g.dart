// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchQueryParams _$SearchQueryParamsFromJson(Map<String, dynamic> json) =>
    _SearchQueryParams(
      includeArchived: json['includeArchived'] as bool?,
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      sortBy: $enumDecodeNullable(_$SearchSortByEnumMap, json['sortBy']),
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sortOrder']),
      search: json['search'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      status: $enumDecodeNullable(_$ItemStatusEnumMap, json['status']),
      isFeatured: json['isFeatured'] as bool?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SearchQueryParamsToJson(_SearchQueryParams instance) =>
    <String, dynamic>{
      'includeArchived': instance.includeArchived,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': _$SearchSortByEnumMap[instance.sortBy],
      'sortOrder': _$SortOrderEnumMap[instance.sortOrder],
      'search': instance.search,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'status': _$ItemStatusEnumMap[instance.status],
      'isFeatured': instance.isFeatured,
      'cursor': instance.cursor,
    };

const _$SearchSortByEnumMap = {
  SearchSortBy.status: 'status',
  SearchSortBy.name: 'name',
  SearchSortBy.createdAt: 'createdAt',
  SearchSortBy.updatedAt: 'updatedAt',
};

const _$SortOrderEnumMap = {SortOrder.asc: 'asc', SortOrder.desc: 'desc'};

const _$ItemStatusEnumMap = {
  ItemStatus.draft: 'DRAFT',
  ItemStatus.active: 'ACTIVE',
  ItemStatus.inactive: 'INACTIVE',
  ItemStatus.archived: 'ARCHIVED',
};

_ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    _ProductResponse(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
    );

Map<String, dynamic> _$ProductResponseToJson(_ProductResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

_ProductItem _$ProductItemFromJson(Map<String, dynamic> json) => _ProductItem(
  id: json['id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  categoryId: json['categoryId'] as String?,
  brandId: json['brandId'] as String?,
  status: json['status'] as String?,
  isFeatured: json['isFeatured'] as bool? ?? false,
  seoTitle: json['seoTitle'] as String?,
  seoDescription: json['seoDescription'] as String?,
  createdById: json['createdById'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  deletedAt: json['deletedAt'] as String?,
  brand: json['brand'] == null
      ? null
      : Brand.fromJson(json['brand'] as Map<String, dynamic>),
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  count: json['_count'] == null
      ? null
      : VariantCount.fromJson(json['_count'] as Map<String, dynamic>),
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProductItemToJson(_ProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'status': instance.status,
      'isFeatured': instance.isFeatured,
      'seoTitle': instance.seoTitle,
      'seoDescription': instance.seoDescription,
      'createdById': instance.createdById,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'brand': instance.brand,
      'category': instance.category,
      '_count': instance.count,
      'images': instance.images,
      'variants': instance.variants,
    };

_Brand _$BrandFromJson(Map<String, dynamic> json) => _Brand(
  id: json['id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  logoUrl: json['logoUrl'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$BrandToJson(_Brand instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'logoUrl': instance.logoUrl,
  'description': instance.description,
};

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
};

_VariantCount _$VariantCountFromJson(Map<String, dynamic> json) =>
    _VariantCount(variants: (json['variants'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$VariantCountToJson(_VariantCount instance) =>
    <String, dynamic>{'variants': instance.variants};

_ProductImage _$ProductImageFromJson(Map<String, dynamic> json) =>
    _ProductImage(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      url: json['url'] as String?,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String?,
      fileId: json['fileId'] as String?,
      altText: json['altText'] as String?,
    );

Map<String, dynamic> _$ProductImageToJson(_ProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'url': instance.url,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt,
      'fileId': instance.fileId,
      'altText': instance.altText,
    };

_ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    _ProductVariant(
      id: json['id'] as String?,
      sku: json['sku'] as String?,
      status: json['status'] as String?,
      price: json['price'],
      compareAtPrice: json['compareAtPrice'],
      costPrice: json['costPrice'],
    );

Map<String, dynamic> _$ProductVariantToJson(_ProductVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'status': instance.status,
      'price': instance.price,
      'compareAtPrice': instance.compareAtPrice,
      'costPrice': instance.costPrice,
    };
