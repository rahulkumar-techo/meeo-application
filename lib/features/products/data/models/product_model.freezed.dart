// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductResponse {

 bool get success; String get message; ProductData get data;
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseCopyWith<ProductResponse> get copyWith => _$ProductResponseCopyWithImpl<ProductResponse>(this as ProductResponse, _$identity);

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.data, _this.data) || other.data == _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductResponse;
  return Object.hash(runtimeType,_this.success,_this.message,_this.data);
}

@override
String toString() {
  final _this = this as ProductResponse;
  return 'ProductResponse(success: ${_this.success}, message: ${_this.message}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, ProductData data
});


$ProductDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(ProductResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductData,
  ));
}
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDataCopyWith<$Res> get data {
  
  return $ProductDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductResponse].
extension ProductResponsePatterns on ProductResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  ProductData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  ProductData data)  $default,) {final _that = this;
switch (_that) {
case _ProductResponse():
return $default(_that.success,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  ProductData data)?  $default,) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductResponse implements ProductResponse {
  const _ProductResponse({this.success = true, this.message = '', required this.data});
  factory _ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override final  ProductData data;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductResponseCopyWith<_ProductResponse> get copyWith => __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,message,data);
}

@override
String toString() {
    return 'ProductResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(_ProductResponse value, $Res Function(_ProductResponse) _then) = __$ProductResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, ProductData data
});


@override $ProductDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(this._self, this._then);

  final _ProductResponse _self;
  final $Res Function(_ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_ProductResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductData,
  ));
}

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDataCopyWith<$Res> get data {
  
  return $ProductDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProductData {

 List<ProductModel> get items; int? get total; int? get page; int? get limit; int? get totalPages;
/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDataCopyWith<ProductData> get copyWith => _$ProductDataCopyWithImpl<ProductData>(this as ProductData, _$identity);

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductData&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&(identical(other.totalPages, _this.totalPages) || other.totalPages == _this.totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.total,_this.page,_this.limit,_this.totalPages);
}

@override
String toString() {
  final _this = this as ProductData;
  return 'ProductData(items: ${_this.items}, total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, totalPages: ${_this.totalPages})';
}


}

/// @nodoc
abstract mixin class $ProductDataCopyWith<$Res>  {
  factory $ProductDataCopyWith(ProductData value, $Res Function(ProductData) _then) = _$ProductDataCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> items, int? total, int? page, int? limit, int? totalPages
});




}
/// @nodoc
class _$ProductDataCopyWithImpl<$Res>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._self, this._then);

  final ProductData _self;
  final $Res Function(ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(ProductData(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductData].
extension ProductDataPatterns on ProductData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductData value)  $default,){
final _that = this;
switch (_that) {
case _ProductData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductModel> items,  int? total,  int? page,  int? limit,  int? totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.items,_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductModel> items,  int? total,  int? page,  int? limit,  int? totalPages)  $default,) {final _that = this;
switch (_that) {
case _ProductData():
return $default(_that.items,_that.total,_that.page,_that.limit,_that.totalPages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductModel> items,  int? total,  int? page,  int? limit,  int? totalPages)?  $default,) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.items,_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductData implements ProductData {
  const _ProductData({ List<ProductModel> items = const [], this.total, this.page, this.limit, this.totalPages}): _items = items;
  factory _ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

 final  List<ProductModel> _items;
@override@JsonKey() List<ProductModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int? total;
@override final  int? page;
@override final  int? limit;
@override final  int? totalPages;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDataCopyWith<_ProductData> get copyWith => __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductData&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,page,limit,totalPages);
}

@override
String toString() {
    return 'ProductData(items: $items, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ProductDataCopyWith<$Res> implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(_ProductData value, $Res Function(_ProductData) _then) = __$ProductDataCopyWithImpl;
@override @useResult
$Res call({
 List<ProductModel> items, int? total, int? page, int? limit, int? totalPages
});




}
/// @nodoc
class __$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(this._self, this._then);

  final _ProductData _self;
  final $Res Function(_ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(_ProductData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ProductModel {

 String? get id; String get name; String? get slug; String? get description; ProductStatus get status; bool get isFeatured; String? get categoryId; String? get brandId; String? get createdById; String? get seoTitle; String? get seoDescription; CategoryModel? get category; BrandModel? get brand; List<ImageModel> get images; List<ProductVariantModel> get variants;@JsonKey(name: '_count') ProductCountModel? get count; String? get createdAt; String? get updatedAt; String? get deletedAt;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.isFeatured, _this.isFeatured) || other.isFeatured == _this.isFeatured)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.brandId, _this.brandId) || other.brandId == _this.brandId)&&(identical(other.createdById, _this.createdById) || other.createdById == _this.createdById)&&(identical(other.seoTitle, _this.seoTitle) || other.seoTitle == _this.seoTitle)&&(identical(other.seoDescription, _this.seoDescription) || other.seoDescription == _this.seoDescription)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&const DeepCollectionEquality().equals(other.images, _this.images)&&const DeepCollectionEquality().equals(other.variants, _this.variants)&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.deletedAt, _this.deletedAt) || other.deletedAt == _this.deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductModel;
  return Object.hashAll([runtimeType,_this.id,_this.name,_this.slug,_this.description,_this.status,_this.isFeatured,_this.categoryId,_this.brandId,_this.createdById,_this.seoTitle,_this.seoDescription,_this.category,_this.brand,const DeepCollectionEquality().hash(_this.images),const DeepCollectionEquality().hash(_this.variants),_this.count,_this.createdAt,_this.updatedAt,_this.deletedAt]);
}

@override
String toString() {
  final _this = this as ProductModel;
  return 'ProductModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, description: ${_this.description}, status: ${_this.status}, isFeatured: ${_this.isFeatured}, categoryId: ${_this.categoryId}, brandId: ${_this.brandId}, createdById: ${_this.createdById}, seoTitle: ${_this.seoTitle}, seoDescription: ${_this.seoDescription}, category: ${_this.category}, brand: ${_this.brand}, images: ${_this.images}, variants: ${_this.variants}, count: ${_this.count}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, deletedAt: ${_this.deletedAt})';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String? slug, String? description, ProductStatus status, bool isFeatured, String? categoryId, String? brandId, String? createdById, String? seoTitle, String? seoDescription, CategoryModel? category, BrandModel? brand, List<ImageModel> images, List<ProductVariantModel> variants,@JsonKey(name: '_count') ProductCountModel? count, String? createdAt, String? updatedAt, String? deletedAt
});


$CategoryModelCopyWith<$Res>? get category;$BrandModelCopyWith<$Res>? get brand;$ProductCountModelCopyWith<$Res>? get count;

}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? status = null,Object? isFeatured = null,Object? categoryId = freezed,Object? brandId = freezed,Object? createdById = freezed,Object? seoTitle = freezed,Object? seoDescription = freezed,Object? category = freezed,Object? brand = freezed,Object? images = null,Object? variants = null,Object? count = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,seoDescription: freezed == seoDescription ? _self.seoDescription : seoDescription // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandModel?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ImageModel>,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariantModel>,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as ProductCountModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCountModelCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $ProductCountModelCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String? slug,  String? description,  ProductStatus status,  bool isFeatured,  String? categoryId,  String? brandId,  String? createdById,  String? seoTitle,  String? seoDescription,  CategoryModel? category,  BrandModel? brand,  List<ImageModel> images,  List<ProductVariantModel> variants, @JsonKey(name: '_count')  ProductCountModel? count,  String? createdAt,  String? updatedAt,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.status,_that.isFeatured,_that.categoryId,_that.brandId,_that.createdById,_that.seoTitle,_that.seoDescription,_that.category,_that.brand,_that.images,_that.variants,_that.count,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String? slug,  String? description,  ProductStatus status,  bool isFeatured,  String? categoryId,  String? brandId,  String? createdById,  String? seoTitle,  String? seoDescription,  CategoryModel? category,  BrandModel? brand,  List<ImageModel> images,  List<ProductVariantModel> variants, @JsonKey(name: '_count')  ProductCountModel? count,  String? createdAt,  String? updatedAt,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.status,_that.isFeatured,_that.categoryId,_that.brandId,_that.createdById,_that.seoTitle,_that.seoDescription,_that.category,_that.brand,_that.images,_that.variants,_that.count,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String? slug,  String? description,  ProductStatus status,  bool isFeatured,  String? categoryId,  String? brandId,  String? createdById,  String? seoTitle,  String? seoDescription,  CategoryModel? category,  BrandModel? brand,  List<ImageModel> images,  List<ProductVariantModel> variants, @JsonKey(name: '_count')  ProductCountModel? count,  String? createdAt,  String? updatedAt,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.status,_that.isFeatured,_that.categoryId,_that.brandId,_that.createdById,_that.seoTitle,_that.seoDescription,_that.category,_that.brand,_that.images,_that.variants,_that.count,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel extends ProductModel {
  const _ProductModel({this.id, required this.name, this.slug, this.description, this.status = ProductStatus.active, this.isFeatured = false, this.categoryId, this.brandId, this.createdById, this.seoTitle, this.seoDescription, this.category, this.brand,  List<ImageModel> images = const [],  List<ProductVariantModel> variants = const [], @JsonKey(name: '_count') this.count, this.createdAt, this.updatedAt, this.deletedAt}): _images = images,_variants = variants,super._();
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String? slug;
@override final  String? description;
@override@JsonKey() final  ProductStatus status;
@override@JsonKey() final  bool isFeatured;
@override final  String? categoryId;
@override final  String? brandId;
@override final  String? createdById;
@override final  String? seoTitle;
@override final  String? seoDescription;
@override final  CategoryModel? category;
@override final  BrandModel? brand;
 final  List<ImageModel> _images;
@override@JsonKey() List<ImageModel> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProductVariantModel> _variants;
@override@JsonKey() List<ProductVariantModel> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

@override@JsonKey(name: '_count') final  ProductCountModel? count;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? deletedAt;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.seoTitle, seoTitle) || other.seoTitle == seoTitle)&&(identical(other.seoDescription, seoDescription) || other.seoDescription == seoDescription)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other.images, _images)&&const DeepCollectionEquality().equals(other.variants, _variants)&&(identical(other.count, count) || other.count == count)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,name,slug,description,status,isFeatured,categoryId,brandId,createdById,seoTitle,seoDescription,category,brand,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_variants),count,createdAt,updatedAt,deletedAt]);
}

@override
String toString() {
    return 'ProductModel(id: $id, name: $name, slug: $slug, description: $description, status: $status, isFeatured: $isFeatured, categoryId: $categoryId, brandId: $brandId, createdById: $createdById, seoTitle: $seoTitle, seoDescription: $seoDescription, category: $category, brand: $brand, images: $images, variants: $variants, count: $count, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String? slug, String? description, ProductStatus status, bool isFeatured, String? categoryId, String? brandId, String? createdById, String? seoTitle, String? seoDescription, CategoryModel? category, BrandModel? brand, List<ImageModel> images, List<ProductVariantModel> variants,@JsonKey(name: '_count') ProductCountModel? count, String? createdAt, String? updatedAt, String? deletedAt
});


@override $CategoryModelCopyWith<$Res>? get category;@override $BrandModelCopyWith<$Res>? get brand;@override $ProductCountModelCopyWith<$Res>? get count;

}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? status = null,Object? isFeatured = null,Object? categoryId = freezed,Object? brandId = freezed,Object? createdById = freezed,Object? seoTitle = freezed,Object? seoDescription = freezed,Object? category = freezed,Object? brand = freezed,Object? images = null,Object? variants = null,Object? count = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,seoDescription: freezed == seoDescription ? _self.seoDescription : seoDescription // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandModel?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageModel>,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariantModel>,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as ProductCountModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCountModelCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $ProductCountModelCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// @nodoc
mixin _$ProductVariantModel {

 String? get id; String? get productId; String? get sku; String? get barcode; String? get price; String? get compareAtPrice; String? get costPrice; String? get status; String? get createdAt; String? get updatedAt; List<VariantAttributeValueModel> get attributeValues;
/// Create a copy of ProductVariantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantModelCopyWith<ProductVariantModel> get copyWith => _$ProductVariantModelCopyWithImpl<ProductVariantModel>(this as ProductVariantModel, _$identity);

  /// Serializes this ProductVariantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductVariantModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariantModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.sku, _this.sku) || other.sku == _this.sku)&&(identical(other.barcode, _this.barcode) || other.barcode == _this.barcode)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.compareAtPrice, _this.compareAtPrice) || other.compareAtPrice == _this.compareAtPrice)&&(identical(other.costPrice, _this.costPrice) || other.costPrice == _this.costPrice)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&const DeepCollectionEquality().equals(other.attributeValues, _this.attributeValues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductVariantModel;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.sku,_this.barcode,_this.price,_this.compareAtPrice,_this.costPrice,_this.status,_this.createdAt,_this.updatedAt,const DeepCollectionEquality().hash(_this.attributeValues));
}

@override
String toString() {
  final _this = this as ProductVariantModel;
  return 'ProductVariantModel(id: ${_this.id}, productId: ${_this.productId}, sku: ${_this.sku}, barcode: ${_this.barcode}, price: ${_this.price}, compareAtPrice: ${_this.compareAtPrice}, costPrice: ${_this.costPrice}, status: ${_this.status}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, attributeValues: ${_this.attributeValues})';
}


}

/// @nodoc
abstract mixin class $ProductVariantModelCopyWith<$Res>  {
  factory $ProductVariantModelCopyWith(ProductVariantModel value, $Res Function(ProductVariantModel) _then) = _$ProductVariantModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? productId, String? sku, String? barcode, String? price, String? compareAtPrice, String? costPrice, String? status, String? createdAt, String? updatedAt, List<VariantAttributeValueModel> attributeValues
});




}
/// @nodoc
class _$ProductVariantModelCopyWithImpl<$Res>
    implements $ProductVariantModelCopyWith<$Res> {
  _$ProductVariantModelCopyWithImpl(this._self, this._then);

  final ProductVariantModel _self;
  final $Res Function(ProductVariantModel) _then;

/// Create a copy of ProductVariantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = freezed,Object? compareAtPrice = freezed,Object? costPrice = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? attributeValues = null,}) {
  return _then(ProductVariantModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as String?,costPrice: freezed == costPrice ? _self.costPrice : costPrice // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,attributeValues: null == attributeValues ? _self.attributeValues : attributeValues // ignore: cast_nullable_to_non_nullable
as List<VariantAttributeValueModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariantModel].
extension ProductVariantModelPatterns on ProductVariantModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariantModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariantModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariantModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariantModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariantModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? sku,  String? barcode,  String? price,  String? compareAtPrice,  String? costPrice,  String? status,  String? createdAt,  String? updatedAt,  List<VariantAttributeValueModel> attributeValues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariantModel() when $default != null:
return $default(_that.id,_that.productId,_that.sku,_that.barcode,_that.price,_that.compareAtPrice,_that.costPrice,_that.status,_that.createdAt,_that.updatedAt,_that.attributeValues);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? sku,  String? barcode,  String? price,  String? compareAtPrice,  String? costPrice,  String? status,  String? createdAt,  String? updatedAt,  List<VariantAttributeValueModel> attributeValues)  $default,) {final _that = this;
switch (_that) {
case _ProductVariantModel():
return $default(_that.id,_that.productId,_that.sku,_that.barcode,_that.price,_that.compareAtPrice,_that.costPrice,_that.status,_that.createdAt,_that.updatedAt,_that.attributeValues);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? productId,  String? sku,  String? barcode,  String? price,  String? compareAtPrice,  String? costPrice,  String? status,  String? createdAt,  String? updatedAt,  List<VariantAttributeValueModel> attributeValues)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariantModel() when $default != null:
return $default(_that.id,_that.productId,_that.sku,_that.barcode,_that.price,_that.compareAtPrice,_that.costPrice,_that.status,_that.createdAt,_that.updatedAt,_that.attributeValues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariantModel extends ProductVariantModel {
  const _ProductVariantModel({this.id, this.productId, this.sku, this.barcode, this.price, this.compareAtPrice, this.costPrice, this.status, this.createdAt, this.updatedAt,  List<VariantAttributeValueModel> attributeValues = const []}): _attributeValues = attributeValues,super._();
  factory _ProductVariantModel.fromJson(Map<String, dynamic> json) => _$ProductVariantModelFromJson(json);

@override final  String? id;
@override final  String? productId;
@override final  String? sku;
@override final  String? barcode;
@override final  String? price;
@override final  String? compareAtPrice;
@override final  String? costPrice;
@override final  String? status;
@override final  String? createdAt;
@override final  String? updatedAt;
 final  List<VariantAttributeValueModel> _attributeValues;
@override@JsonKey() List<VariantAttributeValueModel> get attributeValues {
  if (_attributeValues is EqualUnmodifiableListView) return _attributeValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributeValues);
}


/// Create a copy of ProductVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantModelCopyWith<_ProductVariantModel> get copyWith => __$ProductVariantModelCopyWithImpl<_ProductVariantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.compareAtPrice, compareAtPrice) || other.compareAtPrice == compareAtPrice)&&(identical(other.costPrice, costPrice) || other.costPrice == costPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.attributeValues, _attributeValues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,sku,barcode,price,compareAtPrice,costPrice,status,createdAt,updatedAt,const DeepCollectionEquality().hash(_attributeValues));
}

@override
String toString() {
    return 'ProductVariantModel(id: $id, productId: $productId, sku: $sku, barcode: $barcode, price: $price, compareAtPrice: $compareAtPrice, costPrice: $costPrice, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, attributeValues: $attributeValues)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantModelCopyWith<$Res> implements $ProductVariantModelCopyWith<$Res> {
  factory _$ProductVariantModelCopyWith(_ProductVariantModel value, $Res Function(_ProductVariantModel) _then) = __$ProductVariantModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? productId, String? sku, String? barcode, String? price, String? compareAtPrice, String? costPrice, String? status, String? createdAt, String? updatedAt, List<VariantAttributeValueModel> attributeValues
});




}
/// @nodoc
class __$ProductVariantModelCopyWithImpl<$Res>
    implements _$ProductVariantModelCopyWith<$Res> {
  __$ProductVariantModelCopyWithImpl(this._self, this._then);

  final _ProductVariantModel _self;
  final $Res Function(_ProductVariantModel) _then;

/// Create a copy of ProductVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = freezed,Object? compareAtPrice = freezed,Object? costPrice = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? attributeValues = null,}) {
  return _then(_ProductVariantModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as String?,costPrice: freezed == costPrice ? _self.costPrice : costPrice // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,attributeValues: null == attributeValues ? _self._attributeValues : attributeValues // ignore: cast_nullable_to_non_nullable
as List<VariantAttributeValueModel>,
  ));
}


}


/// @nodoc
mixin _$VariantAttributeValueModel {

 String? get variantId; String? get attributeValueId; AttributeValueModel? get attributeValue;
/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantAttributeValueModelCopyWith<VariantAttributeValueModel> get copyWith => _$VariantAttributeValueModelCopyWithImpl<VariantAttributeValueModel>(this as VariantAttributeValueModel, _$identity);

  /// Serializes this VariantAttributeValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VariantAttributeValueModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantAttributeValueModel&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.attributeValueId, _this.attributeValueId) || other.attributeValueId == _this.attributeValueId)&&(identical(other.attributeValue, _this.attributeValue) || other.attributeValue == _this.attributeValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VariantAttributeValueModel;
  return Object.hash(runtimeType,_this.variantId,_this.attributeValueId,_this.attributeValue);
}

@override
String toString() {
  final _this = this as VariantAttributeValueModel;
  return 'VariantAttributeValueModel(variantId: ${_this.variantId}, attributeValueId: ${_this.attributeValueId}, attributeValue: ${_this.attributeValue})';
}


}

/// @nodoc
abstract mixin class $VariantAttributeValueModelCopyWith<$Res>  {
  factory $VariantAttributeValueModelCopyWith(VariantAttributeValueModel value, $Res Function(VariantAttributeValueModel) _then) = _$VariantAttributeValueModelCopyWithImpl;
@useResult
$Res call({
 String? variantId, String? attributeValueId, AttributeValueModel? attributeValue
});


$AttributeValueModelCopyWith<$Res>? get attributeValue;

}
/// @nodoc
class _$VariantAttributeValueModelCopyWithImpl<$Res>
    implements $VariantAttributeValueModelCopyWith<$Res> {
  _$VariantAttributeValueModelCopyWithImpl(this._self, this._then);

  final VariantAttributeValueModel _self;
  final $Res Function(VariantAttributeValueModel) _then;

/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = freezed,Object? attributeValueId = freezed,Object? attributeValue = freezed,}) {
  return _then(VariantAttributeValueModel(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,attributeValueId: freezed == attributeValueId ? _self.attributeValueId : attributeValueId // ignore: cast_nullable_to_non_nullable
as String?,attributeValue: freezed == attributeValue ? _self.attributeValue : attributeValue // ignore: cast_nullable_to_non_nullable
as AttributeValueModel?,
  ));
}
/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeValueModelCopyWith<$Res>? get attributeValue {
    if (_self.attributeValue == null) {
    return null;
  }

  return $AttributeValueModelCopyWith<$Res>(_self.attributeValue!, (value) {
    return _then(_self.copyWith(attributeValue: value));
  });
}
}


/// Adds pattern-matching-related methods to [VariantAttributeValueModel].
extension VariantAttributeValueModelPatterns on VariantAttributeValueModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantAttributeValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantAttributeValueModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantAttributeValueModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantAttributeValueModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantAttributeValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantAttributeValueModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? variantId,  String? attributeValueId,  AttributeValueModel? attributeValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantAttributeValueModel() when $default != null:
return $default(_that.variantId,_that.attributeValueId,_that.attributeValue);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? variantId,  String? attributeValueId,  AttributeValueModel? attributeValue)  $default,) {final _that = this;
switch (_that) {
case _VariantAttributeValueModel():
return $default(_that.variantId,_that.attributeValueId,_that.attributeValue);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? variantId,  String? attributeValueId,  AttributeValueModel? attributeValue)?  $default,) {final _that = this;
switch (_that) {
case _VariantAttributeValueModel() when $default != null:
return $default(_that.variantId,_that.attributeValueId,_that.attributeValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantAttributeValueModel implements VariantAttributeValueModel {
  const _VariantAttributeValueModel({this.variantId, this.attributeValueId, this.attributeValue});
  factory _VariantAttributeValueModel.fromJson(Map<String, dynamic> json) => _$VariantAttributeValueModelFromJson(json);

@override final  String? variantId;
@override final  String? attributeValueId;
@override final  AttributeValueModel? attributeValue;

/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantAttributeValueModelCopyWith<_VariantAttributeValueModel> get copyWith => __$VariantAttributeValueModelCopyWithImpl<_VariantAttributeValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantAttributeValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantAttributeValueModel&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.attributeValueId, attributeValueId) || other.attributeValueId == attributeValueId)&&(identical(other.attributeValue, attributeValue) || other.attributeValue == attributeValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,variantId,attributeValueId,attributeValue);
}

@override
String toString() {
    return 'VariantAttributeValueModel(variantId: $variantId, attributeValueId: $attributeValueId, attributeValue: $attributeValue)';
}


}

/// @nodoc
abstract mixin class _$VariantAttributeValueModelCopyWith<$Res> implements $VariantAttributeValueModelCopyWith<$Res> {
  factory _$VariantAttributeValueModelCopyWith(_VariantAttributeValueModel value, $Res Function(_VariantAttributeValueModel) _then) = __$VariantAttributeValueModelCopyWithImpl;
@override @useResult
$Res call({
 String? variantId, String? attributeValueId, AttributeValueModel? attributeValue
});


@override $AttributeValueModelCopyWith<$Res>? get attributeValue;

}
/// @nodoc
class __$VariantAttributeValueModelCopyWithImpl<$Res>
    implements _$VariantAttributeValueModelCopyWith<$Res> {
  __$VariantAttributeValueModelCopyWithImpl(this._self, this._then);

  final _VariantAttributeValueModel _self;
  final $Res Function(_VariantAttributeValueModel) _then;

/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = freezed,Object? attributeValueId = freezed,Object? attributeValue = freezed,}) {
  return _then(_VariantAttributeValueModel(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,attributeValueId: freezed == attributeValueId ? _self.attributeValueId : attributeValueId // ignore: cast_nullable_to_non_nullable
as String?,attributeValue: freezed == attributeValue ? _self.attributeValue : attributeValue // ignore: cast_nullable_to_non_nullable
as AttributeValueModel?,
  ));
}

/// Create a copy of VariantAttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeValueModelCopyWith<$Res>? get attributeValue {
    if (_self.attributeValue == null) {
    return null;
  }

  return $AttributeValueModelCopyWith<$Res>(_self.attributeValue!, (value) {
    return _then(_self.copyWith(attributeValue: value));
  });
}
}


/// @nodoc
mixin _$AttributeValueModel {

 String? get id; String? get attributeId; String? get value; AttributeModel? get attribute;
/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttributeValueModelCopyWith<AttributeValueModel> get copyWith => _$AttributeValueModelCopyWithImpl<AttributeValueModel>(this as AttributeValueModel, _$identity);

  /// Serializes this AttributeValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttributeValueModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttributeValueModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.attributeId, _this.attributeId) || other.attributeId == _this.attributeId)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.attribute, _this.attribute) || other.attribute == _this.attribute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttributeValueModel;
  return Object.hash(runtimeType,_this.id,_this.attributeId,_this.value,_this.attribute);
}

@override
String toString() {
  final _this = this as AttributeValueModel;
  return 'AttributeValueModel(id: ${_this.id}, attributeId: ${_this.attributeId}, value: ${_this.value}, attribute: ${_this.attribute})';
}


}

/// @nodoc
abstract mixin class $AttributeValueModelCopyWith<$Res>  {
  factory $AttributeValueModelCopyWith(AttributeValueModel value, $Res Function(AttributeValueModel) _then) = _$AttributeValueModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? attributeId, String? value, AttributeModel? attribute
});


$AttributeModelCopyWith<$Res>? get attribute;

}
/// @nodoc
class _$AttributeValueModelCopyWithImpl<$Res>
    implements $AttributeValueModelCopyWith<$Res> {
  _$AttributeValueModelCopyWithImpl(this._self, this._then);

  final AttributeValueModel _self;
  final $Res Function(AttributeValueModel) _then;

/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? attributeId = freezed,Object? value = freezed,Object? attribute = freezed,}) {
  return _then(AttributeValueModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,attributeId: freezed == attributeId ? _self.attributeId : attributeId // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as AttributeModel?,
  ));
}
/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeModelCopyWith<$Res>? get attribute {
    if (_self.attribute == null) {
    return null;
  }

  return $AttributeModelCopyWith<$Res>(_self.attribute!, (value) {
    return _then(_self.copyWith(attribute: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttributeValueModel].
extension AttributeValueModelPatterns on AttributeValueModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttributeValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttributeValueModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttributeValueModel value)  $default,){
final _that = this;
switch (_that) {
case _AttributeValueModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttributeValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttributeValueModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? attributeId,  String? value,  AttributeModel? attribute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttributeValueModel() when $default != null:
return $default(_that.id,_that.attributeId,_that.value,_that.attribute);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? attributeId,  String? value,  AttributeModel? attribute)  $default,) {final _that = this;
switch (_that) {
case _AttributeValueModel():
return $default(_that.id,_that.attributeId,_that.value,_that.attribute);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? attributeId,  String? value,  AttributeModel? attribute)?  $default,) {final _that = this;
switch (_that) {
case _AttributeValueModel() when $default != null:
return $default(_that.id,_that.attributeId,_that.value,_that.attribute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttributeValueModel implements AttributeValueModel {
  const _AttributeValueModel({this.id, this.attributeId, this.value, this.attribute});
  factory _AttributeValueModel.fromJson(Map<String, dynamic> json) => _$AttributeValueModelFromJson(json);

@override final  String? id;
@override final  String? attributeId;
@override final  String? value;
@override final  AttributeModel? attribute;

/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttributeValueModelCopyWith<_AttributeValueModel> get copyWith => __$AttributeValueModelCopyWithImpl<_AttributeValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttributeValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttributeValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.attributeId, attributeId) || other.attributeId == attributeId)&&(identical(other.value, value) || other.value == value)&&(identical(other.attribute, attribute) || other.attribute == attribute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,attributeId,value,attribute);
}

@override
String toString() {
    return 'AttributeValueModel(id: $id, attributeId: $attributeId, value: $value, attribute: $attribute)';
}


}

/// @nodoc
abstract mixin class _$AttributeValueModelCopyWith<$Res> implements $AttributeValueModelCopyWith<$Res> {
  factory _$AttributeValueModelCopyWith(_AttributeValueModel value, $Res Function(_AttributeValueModel) _then) = __$AttributeValueModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? attributeId, String? value, AttributeModel? attribute
});


@override $AttributeModelCopyWith<$Res>? get attribute;

}
/// @nodoc
class __$AttributeValueModelCopyWithImpl<$Res>
    implements _$AttributeValueModelCopyWith<$Res> {
  __$AttributeValueModelCopyWithImpl(this._self, this._then);

  final _AttributeValueModel _self;
  final $Res Function(_AttributeValueModel) _then;

/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? attributeId = freezed,Object? value = freezed,Object? attribute = freezed,}) {
  return _then(_AttributeValueModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,attributeId: freezed == attributeId ? _self.attributeId : attributeId // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as AttributeModel?,
  ));
}

/// Create a copy of AttributeValueModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeModelCopyWith<$Res>? get attribute {
    if (_self.attribute == null) {
    return null;
  }

  return $AttributeModelCopyWith<$Res>(_self.attribute!, (value) {
    return _then(_self.copyWith(attribute: value));
  });
}
}


/// @nodoc
mixin _$AttributeModel {

 String? get id; String? get name; String? get createdAt;
/// Create a copy of AttributeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttributeModelCopyWith<AttributeModel> get copyWith => _$AttributeModelCopyWithImpl<AttributeModel>(this as AttributeModel, _$identity);

  /// Serializes this AttributeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttributeModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttributeModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttributeModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.createdAt);
}

@override
String toString() {
  final _this = this as AttributeModel;
  return 'AttributeModel(id: ${_this.id}, name: ${_this.name}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AttributeModelCopyWith<$Res>  {
  factory $AttributeModelCopyWith(AttributeModel value, $Res Function(AttributeModel) _then) = _$AttributeModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? createdAt
});




}
/// @nodoc
class _$AttributeModelCopyWithImpl<$Res>
    implements $AttributeModelCopyWith<$Res> {
  _$AttributeModelCopyWithImpl(this._self, this._then);

  final AttributeModel _self;
  final $Res Function(AttributeModel) _then;

/// Create a copy of AttributeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? createdAt = freezed,}) {
  return _then(AttributeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttributeModel].
extension AttributeModelPatterns on AttributeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttributeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttributeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttributeModel value)  $default,){
final _that = this;
switch (_that) {
case _AttributeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttributeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttributeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttributeModel() when $default != null:
return $default(_that.id,_that.name,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AttributeModel():
return $default(_that.id,_that.name,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AttributeModel() when $default != null:
return $default(_that.id,_that.name,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttributeModel implements AttributeModel {
  const _AttributeModel({this.id, this.name, this.createdAt});
  factory _AttributeModel.fromJson(Map<String, dynamic> json) => _$AttributeModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? createdAt;

/// Create a copy of AttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttributeModelCopyWith<_AttributeModel> get copyWith => __$AttributeModelCopyWithImpl<_AttributeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttributeModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttributeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,createdAt);
}

@override
String toString() {
    return 'AttributeModel(id: $id, name: $name, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AttributeModelCopyWith<$Res> implements $AttributeModelCopyWith<$Res> {
  factory _$AttributeModelCopyWith(_AttributeModel value, $Res Function(_AttributeModel) _then) = __$AttributeModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? createdAt
});




}
/// @nodoc
class __$AttributeModelCopyWithImpl<$Res>
    implements _$AttributeModelCopyWith<$Res> {
  __$AttributeModelCopyWithImpl(this._self, this._then);

  final _AttributeModel _self;
  final $Res Function(_AttributeModel) _then;

/// Create a copy of AttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? createdAt = freezed,}) {
  return _then(_AttributeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductCountModel {

 int get variants;
/// Create a copy of ProductCountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCountModelCopyWith<ProductCountModel> get copyWith => _$ProductCountModelCopyWithImpl<ProductCountModel>(this as ProductCountModel, _$identity);

  /// Serializes this ProductCountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductCountModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCountModel&&(identical(other.variants, _this.variants) || other.variants == _this.variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductCountModel;
  return Object.hash(runtimeType,_this.variants);
}

@override
String toString() {
  final _this = this as ProductCountModel;
  return 'ProductCountModel(variants: ${_this.variants})';
}


}

/// @nodoc
abstract mixin class $ProductCountModelCopyWith<$Res>  {
  factory $ProductCountModelCopyWith(ProductCountModel value, $Res Function(ProductCountModel) _then) = _$ProductCountModelCopyWithImpl;
@useResult
$Res call({
 int variants
});




}
/// @nodoc
class _$ProductCountModelCopyWithImpl<$Res>
    implements $ProductCountModelCopyWith<$Res> {
  _$ProductCountModelCopyWithImpl(this._self, this._then);

  final ProductCountModel _self;
  final $Res Function(ProductCountModel) _then;

/// Create a copy of ProductCountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variants = null,}) {
  return _then(ProductCountModel(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCountModel].
extension ProductCountModelPatterns on ProductCountModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCountModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCountModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCountModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCountModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCountModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int variants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCountModel() when $default != null:
return $default(_that.variants);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int variants)  $default,) {final _that = this;
switch (_that) {
case _ProductCountModel():
return $default(_that.variants);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int variants)?  $default,) {final _that = this;
switch (_that) {
case _ProductCountModel() when $default != null:
return $default(_that.variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCountModel implements ProductCountModel {
  const _ProductCountModel({this.variants = 0});
  factory _ProductCountModel.fromJson(Map<String, dynamic> json) => _$ProductCountModelFromJson(json);

@override@JsonKey() final  int variants;

/// Create a copy of ProductCountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCountModelCopyWith<_ProductCountModel> get copyWith => __$ProductCountModelCopyWithImpl<_ProductCountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCountModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCountModel&&(identical(other.variants, variants) || other.variants == variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,variants);
}

@override
String toString() {
    return 'ProductCountModel(variants: $variants)';
}


}

/// @nodoc
abstract mixin class _$ProductCountModelCopyWith<$Res> implements $ProductCountModelCopyWith<$Res> {
  factory _$ProductCountModelCopyWith(_ProductCountModel value, $Res Function(_ProductCountModel) _then) = __$ProductCountModelCopyWithImpl;
@override @useResult
$Res call({
 int variants
});




}
/// @nodoc
class __$ProductCountModelCopyWithImpl<$Res>
    implements _$ProductCountModelCopyWith<$Res> {
  __$ProductCountModelCopyWithImpl(this._self, this._then);

  final _ProductCountModel _self;
  final $Res Function(_ProductCountModel) _then;

/// Create a copy of ProductCountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variants = null,}) {
  return _then(_ProductCountModel(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CategoryModel {

 String get id; String get name; String? get slug; String? get description; String? get imageUrl;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CategoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CategoryModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.description,_this.imageUrl);
}

@override
String toString() {
  final _this = this as CategoryModel;
  return 'CategoryModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, description: ${_this.description}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? description, String? imageUrl
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? description,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? description,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? description,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel implements CategoryModel {
  const _CategoryModel({required this.id, required this.name, this.slug, this.description, this.imageUrl});
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
@override final  String? description;
@override final  String? imageUrl;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,description,imageUrl);
}

@override
String toString() {
    return 'CategoryModel(id: $id, name: $name, slug: $slug, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? description, String? imageUrl
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(_CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BrandModel {

 String get id; String get name; String? get slug; String? get logoUrl; String? get description;
/// Create a copy of BrandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandModelCopyWith<BrandModel> get copyWith => _$BrandModelCopyWithImpl<BrandModel>(this as BrandModel, _$identity);

  /// Serializes this BrandModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BrandModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.description, _this.description) || other.description == _this.description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BrandModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.logoUrl,_this.description);
}

@override
String toString() {
  final _this = this as BrandModel;
  return 'BrandModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, logoUrl: ${_this.logoUrl}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $BrandModelCopyWith<$Res>  {
  factory $BrandModelCopyWith(BrandModel value, $Res Function(BrandModel) _then) = _$BrandModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? logoUrl, String? description
});




}
/// @nodoc
class _$BrandModelCopyWithImpl<$Res>
    implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._self, this._then);

  final BrandModel _self;
  final $Res Function(BrandModel) _then;

/// Create a copy of BrandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logoUrl = freezed,Object? description = freezed,}) {
  return _then(BrandModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandModel].
extension BrandModelPatterns on BrandModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logoUrl,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logoUrl,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logoUrl,  String? description)  $default,) {final _that = this;
switch (_that) {
case _BrandModel():
return $default(_that.id,_that.name,_that.slug,_that.logoUrl,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? logoUrl,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _BrandModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logoUrl,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandModel implements BrandModel {
  const _BrandModel({required this.id, required this.name, this.slug, this.logoUrl, this.description});
  factory _BrandModel.fromJson(Map<String, dynamic> json) => _$BrandModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
@override final  String? logoUrl;
@override final  String? description;

/// Create a copy of BrandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandModelCopyWith<_BrandModel> get copyWith => __$BrandModelCopyWithImpl<_BrandModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,logoUrl,description);
}

@override
String toString() {
    return 'BrandModel(id: $id, name: $name, slug: $slug, logoUrl: $logoUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BrandModelCopyWith<$Res> implements $BrandModelCopyWith<$Res> {
  factory _$BrandModelCopyWith(_BrandModel value, $Res Function(_BrandModel) _then) = __$BrandModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? logoUrl, String? description
});




}
/// @nodoc
class __$BrandModelCopyWithImpl<$Res>
    implements _$BrandModelCopyWith<$Res> {
  __$BrandModelCopyWithImpl(this._self, this._then);

  final _BrandModel _self;
  final $Res Function(_BrandModel) _then;

/// Create a copy of BrandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logoUrl = freezed,Object? description = freezed,}) {
  return _then(_BrandModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ImageModel {

 String? get id; String? get productId; String? get fileId; String get url; String get altText; int get sortOrder; String? get createdAt;
/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageModelCopyWith<ImageModel> get copyWith => _$ImageModelCopyWithImpl<ImageModel>(this as ImageModel, _$identity);

  /// Serializes this ImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ImageModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.fileId, _this.fileId) || other.fileId == _this.fileId)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.altText, _this.altText) || other.altText == _this.altText)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ImageModel;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.fileId,_this.url,_this.altText,_this.sortOrder,_this.createdAt);
}

@override
String toString() {
  final _this = this as ImageModel;
  return 'ImageModel(id: ${_this.id}, productId: ${_this.productId}, fileId: ${_this.fileId}, url: ${_this.url}, altText: ${_this.altText}, sortOrder: ${_this.sortOrder}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ImageModelCopyWith<$Res>  {
  factory $ImageModelCopyWith(ImageModel value, $Res Function(ImageModel) _then) = _$ImageModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? productId, String? fileId, String url, String altText, int sortOrder, String? createdAt
});




}
/// @nodoc
class _$ImageModelCopyWithImpl<$Res>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._self, this._then);

  final ImageModel _self;
  final $Res Function(ImageModel) _then;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? fileId = freezed,Object? url = null,Object? altText = null,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(ImageModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: null == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageModel].
extension ImageModelPatterns on ImageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageModel value)  $default,){
final _that = this;
switch (_that) {
case _ImageModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? fileId,  String url,  String altText,  int sortOrder,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that.id,_that.productId,_that.fileId,_that.url,_that.altText,_that.sortOrder,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? fileId,  String url,  String altText,  int sortOrder,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ImageModel():
return $default(_that.id,_that.productId,_that.fileId,_that.url,_that.altText,_that.sortOrder,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? productId,  String? fileId,  String url,  String altText,  int sortOrder,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageModel() when $default != null:
return $default(_that.id,_that.productId,_that.fileId,_that.url,_that.altText,_that.sortOrder,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageModel implements ImageModel {
  const _ImageModel({this.id, this.productId, this.fileId, required this.url, this.altText = '', this.sortOrder = 0, this.createdAt});
  factory _ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

@override final  String? id;
@override final  String? productId;
@override final  String? fileId;
@override final  String url;
@override@JsonKey() final  String altText;
@override@JsonKey() final  int sortOrder;
@override final  String? createdAt;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageModelCopyWith<_ImageModel> get copyWith => __$ImageModelCopyWithImpl<_ImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.url, url) || other.url == url)&&(identical(other.altText, altText) || other.altText == altText)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,fileId,url,altText,sortOrder,createdAt);
}

@override
String toString() {
    return 'ImageModel(id: $id, productId: $productId, fileId: $fileId, url: $url, altText: $altText, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ImageModelCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$ImageModelCopyWith(_ImageModel value, $Res Function(_ImageModel) _then) = __$ImageModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? productId, String? fileId, String url, String altText, int sortOrder, String? createdAt
});




}
/// @nodoc
class __$ImageModelCopyWithImpl<$Res>
    implements _$ImageModelCopyWith<$Res> {
  __$ImageModelCopyWithImpl(this._self, this._then);

  final _ImageModel _self;
  final $Res Function(_ImageModel) _then;

/// Create a copy of ImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? fileId = freezed,Object? url = null,Object? altText = null,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(_ImageModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: null == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
