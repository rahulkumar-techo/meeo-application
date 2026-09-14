// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchQueryParams {

 bool? get includeArchived; int? get page; int? get limit; SearchSortBy? get sortBy; SortOrder? get sortOrder; String? get search; String? get categoryId; String? get brandId; ItemStatus? get status; bool? get isFeatured; String? get cursor;
/// Create a copy of SearchQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryParamsCopyWith<SearchQueryParams> get copyWith => _$SearchQueryParamsCopyWithImpl<SearchQueryParams>(this as SearchQueryParams, _$identity);

  /// Serializes this SearchQueryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SearchQueryParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryParams&&(identical(other.includeArchived, _this.includeArchived) || other.includeArchived == _this.includeArchived)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&(identical(other.sortBy, _this.sortBy) || other.sortBy == _this.sortBy)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.search, _this.search) || other.search == _this.search)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.brandId, _this.brandId) || other.brandId == _this.brandId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.isFeatured, _this.isFeatured) || other.isFeatured == _this.isFeatured)&&(identical(other.cursor, _this.cursor) || other.cursor == _this.cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SearchQueryParams;
  return Object.hash(runtimeType,_this.includeArchived,_this.page,_this.limit,_this.sortBy,_this.sortOrder,_this.search,_this.categoryId,_this.brandId,_this.status,_this.isFeatured,_this.cursor);
}

@override
String toString() {
  final _this = this as SearchQueryParams;
  return 'SearchQueryParams(includeArchived: ${_this.includeArchived}, page: ${_this.page}, limit: ${_this.limit}, sortBy: ${_this.sortBy}, sortOrder: ${_this.sortOrder}, search: ${_this.search}, categoryId: ${_this.categoryId}, brandId: ${_this.brandId}, status: ${_this.status}, isFeatured: ${_this.isFeatured}, cursor: ${_this.cursor})';
}


}

/// @nodoc
abstract mixin class $SearchQueryParamsCopyWith<$Res>  {
  factory $SearchQueryParamsCopyWith(SearchQueryParams value, $Res Function(SearchQueryParams) _then) = _$SearchQueryParamsCopyWithImpl;
@useResult
$Res call({
 bool? includeArchived, int? page, int? limit, SearchSortBy? sortBy, SortOrder? sortOrder, String? search, String? categoryId, String? brandId, ItemStatus? status, bool? isFeatured, String? cursor
});




}
/// @nodoc
class _$SearchQueryParamsCopyWithImpl<$Res>
    implements $SearchQueryParamsCopyWith<$Res> {
  _$SearchQueryParamsCopyWithImpl(this._self, this._then);

  final SearchQueryParams _self;
  final $Res Function(SearchQueryParams) _then;

/// Create a copy of SearchQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? includeArchived = freezed,Object? page = freezed,Object? limit = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? search = freezed,Object? categoryId = freezed,Object? brandId = freezed,Object? status = freezed,Object? isFeatured = freezed,Object? cursor = freezed,}) {
  return _then(SearchQueryParams(
includeArchived: freezed == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SearchSortBy?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchQueryParams].
extension SearchQueryParamsPatterns on SearchQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _SearchQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQueryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? includeArchived,  int? page,  int? limit,  SearchSortBy? sortBy,  SortOrder? sortOrder,  String? search,  String? categoryId,  String? brandId,  ItemStatus? status,  bool? isFeatured,  String? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryParams() when $default != null:
return $default(_that.includeArchived,_that.page,_that.limit,_that.sortBy,_that.sortOrder,_that.search,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? includeArchived,  int? page,  int? limit,  SearchSortBy? sortBy,  SortOrder? sortOrder,  String? search,  String? categoryId,  String? brandId,  ItemStatus? status,  bool? isFeatured,  String? cursor)  $default,) {final _that = this;
switch (_that) {
case _SearchQueryParams():
return $default(_that.includeArchived,_that.page,_that.limit,_that.sortBy,_that.sortOrder,_that.search,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.cursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? includeArchived,  int? page,  int? limit,  SearchSortBy? sortBy,  SortOrder? sortOrder,  String? search,  String? categoryId,  String? brandId,  ItemStatus? status,  bool? isFeatured,  String? cursor)?  $default,) {final _that = this;
switch (_that) {
case _SearchQueryParams() when $default != null:
return $default(_that.includeArchived,_that.page,_that.limit,_that.sortBy,_that.sortOrder,_that.search,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchQueryParams implements SearchQueryParams {
  const _SearchQueryParams({this.includeArchived, this.page, this.limit, this.sortBy, this.sortOrder, this.search, this.categoryId, this.brandId, this.status, this.isFeatured, this.cursor});
  factory _SearchQueryParams.fromJson(Map<String, dynamic> json) => _$SearchQueryParamsFromJson(json);

@override final  bool? includeArchived;
@override final  int? page;
@override final  int? limit;
@override final  SearchSortBy? sortBy;
@override final  SortOrder? sortOrder;
@override final  String? search;
@override final  String? categoryId;
@override final  String? brandId;
@override final  ItemStatus? status;
@override final  bool? isFeatured;
@override final  String? cursor;

/// Create a copy of SearchQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryParamsCopyWith<_SearchQueryParams> get copyWith => __$SearchQueryParamsCopyWithImpl<_SearchQueryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchQueryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryParams&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.search, search) || other.search == search)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,includeArchived,page,limit,sortBy,sortOrder,search,categoryId,brandId,status,isFeatured,cursor);
}

@override
String toString() {
    return 'SearchQueryParams(includeArchived: $includeArchived, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder, search: $search, categoryId: $categoryId, brandId: $brandId, status: $status, isFeatured: $isFeatured, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryParamsCopyWith<$Res> implements $SearchQueryParamsCopyWith<$Res> {
  factory _$SearchQueryParamsCopyWith(_SearchQueryParams value, $Res Function(_SearchQueryParams) _then) = __$SearchQueryParamsCopyWithImpl;
@override @useResult
$Res call({
 bool? includeArchived, int? page, int? limit, SearchSortBy? sortBy, SortOrder? sortOrder, String? search, String? categoryId, String? brandId, ItemStatus? status, bool? isFeatured, String? cursor
});




}
/// @nodoc
class __$SearchQueryParamsCopyWithImpl<$Res>
    implements _$SearchQueryParamsCopyWith<$Res> {
  __$SearchQueryParamsCopyWithImpl(this._self, this._then);

  final _SearchQueryParams _self;
  final $Res Function(_SearchQueryParams) _then;

/// Create a copy of SearchQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? includeArchived = freezed,Object? page = freezed,Object? limit = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? search = freezed,Object? categoryId = freezed,Object? brandId = freezed,Object? status = freezed,Object? isFeatured = freezed,Object? cursor = freezed,}) {
  return _then(_SearchQueryParams(
includeArchived: freezed == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SearchSortBy?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductResponse {

 List<ProductItem> get items; int? get totalPages; int? get totalCount; int? get total; int? get page; int? get limit; bool? get hasNextPage; bool? get hasPreviousPage;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.totalPages, _this.totalPages) || other.totalPages == _this.totalPages)&&(identical(other.totalCount, _this.totalCount) || other.totalCount == _this.totalCount)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&(identical(other.hasNextPage, _this.hasNextPage) || other.hasNextPage == _this.hasNextPage)&&(identical(other.hasPreviousPage, _this.hasPreviousPage) || other.hasPreviousPage == _this.hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductResponse;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.totalPages,_this.totalCount,_this.total,_this.page,_this.limit,_this.hasNextPage,_this.hasPreviousPage);
}

@override
String toString() {
  final _this = this as ProductResponse;
  return 'ProductResponse(items: ${_this.items}, totalPages: ${_this.totalPages}, totalCount: ${_this.totalCount}, total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, hasNextPage: ${_this.hasNextPage}, hasPreviousPage: ${_this.hasPreviousPage})';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
 List<ProductItem> items, int? totalPages, int? totalCount, int? total, int? page, int? limit, bool? hasNextPage, bool? hasPreviousPage
});




}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalPages = freezed,Object? totalCount = freezed,Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? hasNextPage = freezed,Object? hasPreviousPage = freezed,}) {
  return _then(ProductResponse(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductItem> items,  int? totalPages,  int? totalCount,  int? total,  int? page,  int? limit,  bool? hasNextPage,  bool? hasPreviousPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.items,_that.totalPages,_that.totalCount,_that.total,_that.page,_that.limit,_that.hasNextPage,_that.hasPreviousPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductItem> items,  int? totalPages,  int? totalCount,  int? total,  int? page,  int? limit,  bool? hasNextPage,  bool? hasPreviousPage)  $default,) {final _that = this;
switch (_that) {
case _ProductResponse():
return $default(_that.items,_that.totalPages,_that.totalCount,_that.total,_that.page,_that.limit,_that.hasNextPage,_that.hasPreviousPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductItem> items,  int? totalPages,  int? totalCount,  int? total,  int? page,  int? limit,  bool? hasNextPage,  bool? hasPreviousPage)?  $default,) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.items,_that.totalPages,_that.totalCount,_that.total,_that.page,_that.limit,_that.hasNextPage,_that.hasPreviousPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductResponse implements ProductResponse {
  const _ProductResponse({ List<ProductItem> items = const [], this.totalPages, this.totalCount, this.total, this.page, this.limit, this.hasNextPage, this.hasPreviousPage}): _items = items;
  factory _ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

 final  List<ProductItem> _items;
@override@JsonKey() List<ProductItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int? totalPages;
@override final  int? totalCount;
@override final  int? total;
@override final  int? page;
@override final  int? limit;
@override final  bool? hasNextPage;
@override final  bool? hasPreviousPage;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponse&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalPages,totalCount,total,page,limit,hasNextPage,hasPreviousPage);
}

@override
String toString() {
    return 'ProductResponse(items: $items, totalPages: $totalPages, totalCount: $totalCount, total: $total, page: $page, limit: $limit, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(_ProductResponse value, $Res Function(_ProductResponse) _then) = __$ProductResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ProductItem> items, int? totalPages, int? totalCount, int? total, int? page, int? limit, bool? hasNextPage, bool? hasPreviousPage
});




}
/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(this._self, this._then);

  final _ProductResponse _self;
  final $Res Function(_ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalPages = freezed,Object? totalCount = freezed,Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? hasNextPage = freezed,Object? hasPreviousPage = freezed,}) {
  return _then(_ProductResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ProductItem {

 String? get id; String? get name; String? get slug; String? get description; String? get categoryId; String? get brandId; String? get status; bool get isFeatured; String? get seoTitle; String? get seoDescription; String? get createdById; String? get createdAt; String? get updatedAt; String? get deletedAt; Brand? get brand; Category? get category;@JsonKey(name: '_count') VariantCount? get count; List<ProductImage> get images; List<ProductVariant> get variants;
/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductItemCopyWith<ProductItem> get copyWith => _$ProductItemCopyWithImpl<ProductItem>(this as ProductItem, _$identity);

  /// Serializes this ProductItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.brandId, _this.brandId) || other.brandId == _this.brandId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.isFeatured, _this.isFeatured) || other.isFeatured == _this.isFeatured)&&(identical(other.seoTitle, _this.seoTitle) || other.seoTitle == _this.seoTitle)&&(identical(other.seoDescription, _this.seoDescription) || other.seoDescription == _this.seoDescription)&&(identical(other.createdById, _this.createdById) || other.createdById == _this.createdById)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.deletedAt, _this.deletedAt) || other.deletedAt == _this.deletedAt)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.images, _this.images)&&const DeepCollectionEquality().equals(other.variants, _this.variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductItem;
  return Object.hashAll([runtimeType,_this.id,_this.name,_this.slug,_this.description,_this.categoryId,_this.brandId,_this.status,_this.isFeatured,_this.seoTitle,_this.seoDescription,_this.createdById,_this.createdAt,_this.updatedAt,_this.deletedAt,_this.brand,_this.category,_this.count,const DeepCollectionEquality().hash(_this.images),const DeepCollectionEquality().hash(_this.variants)]);
}

@override
String toString() {
  final _this = this as ProductItem;
  return 'ProductItem(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, description: ${_this.description}, categoryId: ${_this.categoryId}, brandId: ${_this.brandId}, status: ${_this.status}, isFeatured: ${_this.isFeatured}, seoTitle: ${_this.seoTitle}, seoDescription: ${_this.seoDescription}, createdById: ${_this.createdById}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, deletedAt: ${_this.deletedAt}, brand: ${_this.brand}, category: ${_this.category}, count: ${_this.count}, images: ${_this.images}, variants: ${_this.variants})';
}


}

/// @nodoc
abstract mixin class $ProductItemCopyWith<$Res>  {
  factory $ProductItemCopyWith(ProductItem value, $Res Function(ProductItem) _then) = _$ProductItemCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? slug, String? description, String? categoryId, String? brandId, String? status, bool isFeatured, String? seoTitle, String? seoDescription, String? createdById, String? createdAt, String? updatedAt, String? deletedAt, Brand? brand, Category? category,@JsonKey(name: '_count') VariantCount? count, List<ProductImage> images, List<ProductVariant> variants
});


$BrandCopyWith<$Res>? get brand;$CategoryCopyWith<$Res>? get category;$VariantCountCopyWith<$Res>? get count;

}
/// @nodoc
class _$ProductItemCopyWithImpl<$Res>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._self, this._then);

  final ProductItem _self;
  final $Res Function(ProductItem) _then;

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? description = freezed,Object? categoryId = freezed,Object? brandId = freezed,Object? status = freezed,Object? isFeatured = null,Object? seoTitle = freezed,Object? seoDescription = freezed,Object? createdById = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? brand = freezed,Object? category = freezed,Object? count = freezed,Object? images = null,Object? variants = null,}) {
  return _then(ProductItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,seoDescription: freezed == seoDescription ? _self.seoDescription : seoDescription // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as VariantCount?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariant>,
  ));
}
/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariantCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $VariantCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductItem].
extension ProductItemPatterns on ProductItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductItem value)  $default,){
final _that = this;
switch (_that) {
case _ProductItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductItem value)?  $default,){
final _that = this;
switch (_that) {
case _ProductItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? description,  String? categoryId,  String? brandId,  String? status,  bool isFeatured,  String? seoTitle,  String? seoDescription,  String? createdById,  String? createdAt,  String? updatedAt,  String? deletedAt,  Brand? brand,  Category? category, @JsonKey(name: '_count')  VariantCount? count,  List<ProductImage> images,  List<ProductVariant> variants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductItem() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.seoTitle,_that.seoDescription,_that.createdById,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.brand,_that.category,_that.count,_that.images,_that.variants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? description,  String? categoryId,  String? brandId,  String? status,  bool isFeatured,  String? seoTitle,  String? seoDescription,  String? createdById,  String? createdAt,  String? updatedAt,  String? deletedAt,  Brand? brand,  Category? category, @JsonKey(name: '_count')  VariantCount? count,  List<ProductImage> images,  List<ProductVariant> variants)  $default,) {final _that = this;
switch (_that) {
case _ProductItem():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.seoTitle,_that.seoDescription,_that.createdById,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.brand,_that.category,_that.count,_that.images,_that.variants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? slug,  String? description,  String? categoryId,  String? brandId,  String? status,  bool isFeatured,  String? seoTitle,  String? seoDescription,  String? createdById,  String? createdAt,  String? updatedAt,  String? deletedAt,  Brand? brand,  Category? category, @JsonKey(name: '_count')  VariantCount? count,  List<ProductImage> images,  List<ProductVariant> variants)?  $default,) {final _that = this;
switch (_that) {
case _ProductItem() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.categoryId,_that.brandId,_that.status,_that.isFeatured,_that.seoTitle,_that.seoDescription,_that.createdById,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.brand,_that.category,_that.count,_that.images,_that.variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductItem extends ProductItem {
  const _ProductItem({this.id, this.name, this.slug, this.description, this.categoryId, this.brandId, this.status, this.isFeatured = false, this.seoTitle, this.seoDescription, this.createdById, this.createdAt, this.updatedAt, this.deletedAt, this.brand, this.category, @JsonKey(name: '_count') this.count,  List<ProductImage> images = const [],  List<ProductVariant> variants = const []}): _images = images,_variants = variants,super._();
  factory _ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? slug;
@override final  String? description;
@override final  String? categoryId;
@override final  String? brandId;
@override final  String? status;
@override@JsonKey() final  bool isFeatured;
@override final  String? seoTitle;
@override final  String? seoDescription;
@override final  String? createdById;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? deletedAt;
@override final  Brand? brand;
@override final  Category? category;
@override@JsonKey(name: '_count') final  VariantCount? count;
 final  List<ProductImage> _images;
@override@JsonKey() List<ProductImage> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProductVariant> _variants;
@override@JsonKey() List<ProductVariant> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}


/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductItemCopyWith<_ProductItem> get copyWith => __$ProductItemCopyWithImpl<_ProductItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.seoTitle, seoTitle) || other.seoTitle == seoTitle)&&(identical(other.seoDescription, seoDescription) || other.seoDescription == seoDescription)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.category, category) || other.category == category)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.images, _images)&&const DeepCollectionEquality().equals(other.variants, _variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,name,slug,description,categoryId,brandId,status,isFeatured,seoTitle,seoDescription,createdById,createdAt,updatedAt,deletedAt,brand,category,count,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_variants)]);
}

@override
String toString() {
    return 'ProductItem(id: $id, name: $name, slug: $slug, description: $description, categoryId: $categoryId, brandId: $brandId, status: $status, isFeatured: $isFeatured, seoTitle: $seoTitle, seoDescription: $seoDescription, createdById: $createdById, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, brand: $brand, category: $category, count: $count, images: $images, variants: $variants)';
}


}

/// @nodoc
abstract mixin class _$ProductItemCopyWith<$Res> implements $ProductItemCopyWith<$Res> {
  factory _$ProductItemCopyWith(_ProductItem value, $Res Function(_ProductItem) _then) = __$ProductItemCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? slug, String? description, String? categoryId, String? brandId, String? status, bool isFeatured, String? seoTitle, String? seoDescription, String? createdById, String? createdAt, String? updatedAt, String? deletedAt, Brand? brand, Category? category,@JsonKey(name: '_count') VariantCount? count, List<ProductImage> images, List<ProductVariant> variants
});


@override $BrandCopyWith<$Res>? get brand;@override $CategoryCopyWith<$Res>? get category;@override $VariantCountCopyWith<$Res>? get count;

}
/// @nodoc
class __$ProductItemCopyWithImpl<$Res>
    implements _$ProductItemCopyWith<$Res> {
  __$ProductItemCopyWithImpl(this._self, this._then);

  final _ProductItem _self;
  final $Res Function(_ProductItem) _then;

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? description = freezed,Object? categoryId = freezed,Object? brandId = freezed,Object? status = freezed,Object? isFeatured = null,Object? seoTitle = freezed,Object? seoDescription = freezed,Object? createdById = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? brand = freezed,Object? category = freezed,Object? count = freezed,Object? images = null,Object? variants = null,}) {
  return _then(_ProductItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,seoDescription: freezed == seoDescription ? _self.seoDescription : seoDescription // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as VariantCount?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariant>,
  ));
}

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariantCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $VariantCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// @nodoc
mixin _$Brand {

 String? get id; String? get name; String? get slug; String? get logoUrl; String? get description;
/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandCopyWith<Brand> get copyWith => _$BrandCopyWithImpl<Brand>(this as Brand, _$identity);

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Brand;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Brand&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.description, _this.description) || other.description == _this.description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Brand;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.logoUrl,_this.description);
}

@override
String toString() {
  final _this = this as Brand;
  return 'Brand(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, logoUrl: ${_this.logoUrl}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $BrandCopyWith<$Res>  {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) _then) = _$BrandCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? slug, String? logoUrl, String? description
});




}
/// @nodoc
class _$BrandCopyWithImpl<$Res>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._self, this._then);

  final Brand _self;
  final $Res Function(Brand) _then;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? logoUrl = freezed,Object? description = freezed,}) {
  return _then(Brand(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Brand].
extension BrandPatterns on Brand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Brand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Brand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Brand value)  $default,){
final _that = this;
switch (_that) {
case _Brand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Brand value)?  $default,){
final _that = this;
switch (_that) {
case _Brand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? logoUrl,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Brand() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? logoUrl,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Brand():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? slug,  String? logoUrl,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Brand() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logoUrl,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Brand implements Brand {
  const _Brand({this.id, this.name, this.slug, this.logoUrl, this.description});
  factory _Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? slug;
@override final  String? logoUrl;
@override final  String? description;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandCopyWith<_Brand> get copyWith => __$BrandCopyWithImpl<_Brand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Brand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,logoUrl,description);
}

@override
String toString() {
    return 'Brand(id: $id, name: $name, slug: $slug, logoUrl: $logoUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$BrandCopyWith(_Brand value, $Res Function(_Brand) _then) = __$BrandCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? slug, String? logoUrl, String? description
});




}
/// @nodoc
class __$BrandCopyWithImpl<$Res>
    implements _$BrandCopyWith<$Res> {
  __$BrandCopyWithImpl(this._self, this._then);

  final _Brand _self;
  final $Res Function(_Brand) _then;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? logoUrl = freezed,Object? description = freezed,}) {
  return _then(_Brand(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Category {

 String? get id; String? get name; String? get slug; String? get description; String? get imageUrl;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Category;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Category;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.description,_this.imageUrl);
}

@override
String toString() {
  final _this = this as Category;
  return 'Category(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, description: ${_this.description}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? slug, String? description, String? imageUrl
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(Category(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? description,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? slug,  String? description,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? slug,  String? description,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({this.id, this.name, this.slug, this.description, this.imageUrl});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? slug;
@override final  String? description;
@override final  String? imageUrl;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,description,imageUrl);
}

@override
String toString() {
    return 'Category(id: $id, name: $name, slug: $slug, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? slug, String? description, String? imageUrl
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(_Category(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VariantCount {

 int get variants;
/// Create a copy of VariantCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantCountCopyWith<VariantCount> get copyWith => _$VariantCountCopyWithImpl<VariantCount>(this as VariantCount, _$identity);

  /// Serializes this VariantCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VariantCount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantCount&&(identical(other.variants, _this.variants) || other.variants == _this.variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VariantCount;
  return Object.hash(runtimeType,_this.variants);
}

@override
String toString() {
  final _this = this as VariantCount;
  return 'VariantCount(variants: ${_this.variants})';
}


}

/// @nodoc
abstract mixin class $VariantCountCopyWith<$Res>  {
  factory $VariantCountCopyWith(VariantCount value, $Res Function(VariantCount) _then) = _$VariantCountCopyWithImpl;
@useResult
$Res call({
 int variants
});




}
/// @nodoc
class _$VariantCountCopyWithImpl<$Res>
    implements $VariantCountCopyWith<$Res> {
  _$VariantCountCopyWithImpl(this._self, this._then);

  final VariantCount _self;
  final $Res Function(VariantCount) _then;

/// Create a copy of VariantCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variants = null,}) {
  return _then(VariantCount(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantCount].
extension VariantCountPatterns on VariantCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantCount value)  $default,){
final _that = this;
switch (_that) {
case _VariantCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantCount value)?  $default,){
final _that = this;
switch (_that) {
case _VariantCount() when $default != null:
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
case _VariantCount() when $default != null:
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
case _VariantCount():
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
case _VariantCount() when $default != null:
return $default(_that.variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantCount implements VariantCount {
  const _VariantCount({this.variants = 0});
  factory _VariantCount.fromJson(Map<String, dynamic> json) => _$VariantCountFromJson(json);

@override@JsonKey() final  int variants;

/// Create a copy of VariantCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantCountCopyWith<_VariantCount> get copyWith => __$VariantCountCopyWithImpl<_VariantCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantCountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantCount&&(identical(other.variants, variants) || other.variants == variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,variants);
}

@override
String toString() {
    return 'VariantCount(variants: $variants)';
}


}

/// @nodoc
abstract mixin class _$VariantCountCopyWith<$Res> implements $VariantCountCopyWith<$Res> {
  factory _$VariantCountCopyWith(_VariantCount value, $Res Function(_VariantCount) _then) = __$VariantCountCopyWithImpl;
@override @useResult
$Res call({
 int variants
});




}
/// @nodoc
class __$VariantCountCopyWithImpl<$Res>
    implements _$VariantCountCopyWith<$Res> {
  __$VariantCountCopyWithImpl(this._self, this._then);

  final _VariantCount _self;
  final $Res Function(_VariantCount) _then;

/// Create a copy of VariantCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variants = null,}) {
  return _then(_VariantCount(
variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductImage {

 String? get id; String? get productId; String? get url; int get sortOrder; String? get createdAt; String? get fileId; String? get altText;
/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageCopyWith<ProductImage> get copyWith => _$ProductImageCopyWithImpl<ProductImage>(this as ProductImage, _$identity);

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductImage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImage&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.fileId, _this.fileId) || other.fileId == _this.fileId)&&(identical(other.altText, _this.altText) || other.altText == _this.altText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductImage;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.url,_this.sortOrder,_this.createdAt,_this.fileId,_this.altText);
}

@override
String toString() {
  final _this = this as ProductImage;
  return 'ProductImage(id: ${_this.id}, productId: ${_this.productId}, url: ${_this.url}, sortOrder: ${_this.sortOrder}, createdAt: ${_this.createdAt}, fileId: ${_this.fileId}, altText: ${_this.altText})';
}


}

/// @nodoc
abstract mixin class $ProductImageCopyWith<$Res>  {
  factory $ProductImageCopyWith(ProductImage value, $Res Function(ProductImage) _then) = _$ProductImageCopyWithImpl;
@useResult
$Res call({
 String? id, String? productId, String? url, int sortOrder, String? createdAt, String? fileId, String? altText
});




}
/// @nodoc
class _$ProductImageCopyWithImpl<$Res>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._self, this._then);

  final ProductImage _self;
  final $Res Function(ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? url = freezed,Object? sortOrder = null,Object? createdAt = freezed,Object? fileId = freezed,Object? altText = freezed,}) {
  return _then(ProductImage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImage].
extension ProductImagePatterns on ProductImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImage value)  $default,){
final _that = this;
switch (_that) {
case _ProductImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? url,  int sortOrder,  String? createdAt,  String? fileId,  String? altText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.id,_that.productId,_that.url,_that.sortOrder,_that.createdAt,_that.fileId,_that.altText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? productId,  String? url,  int sortOrder,  String? createdAt,  String? fileId,  String? altText)  $default,) {final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that.id,_that.productId,_that.url,_that.sortOrder,_that.createdAt,_that.fileId,_that.altText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? productId,  String? url,  int sortOrder,  String? createdAt,  String? fileId,  String? altText)?  $default,) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.id,_that.productId,_that.url,_that.sortOrder,_that.createdAt,_that.fileId,_that.altText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImage implements ProductImage {
  const _ProductImage({this.id, this.productId, this.url, this.sortOrder = 0, this.createdAt, this.fileId, this.altText});
  factory _ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

@override final  String? id;
@override final  String? productId;
@override final  String? url;
@override@JsonKey() final  int sortOrder;
@override final  String? createdAt;
@override final  String? fileId;
@override final  String? altText;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageCopyWith<_ProductImage> get copyWith => __$ProductImageCopyWithImpl<_ProductImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImage&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.url, url) || other.url == url)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.altText, altText) || other.altText == altText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,url,sortOrder,createdAt,fileId,altText);
}

@override
String toString() {
    return 'ProductImage(id: $id, productId: $productId, url: $url, sortOrder: $sortOrder, createdAt: $createdAt, fileId: $fileId, altText: $altText)';
}


}

/// @nodoc
abstract mixin class _$ProductImageCopyWith<$Res> implements $ProductImageCopyWith<$Res> {
  factory _$ProductImageCopyWith(_ProductImage value, $Res Function(_ProductImage) _then) = __$ProductImageCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? productId, String? url, int sortOrder, String? createdAt, String? fileId, String? altText
});




}
/// @nodoc
class __$ProductImageCopyWithImpl<$Res>
    implements _$ProductImageCopyWith<$Res> {
  __$ProductImageCopyWithImpl(this._self, this._then);

  final _ProductImage _self;
  final $Res Function(_ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? url = freezed,Object? sortOrder = null,Object? createdAt = freezed,Object? fileId = freezed,Object? altText = freezed,}) {
  return _then(_ProductImage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductVariant {

 String? get id; String? get sku; String? get status; dynamic get price; dynamic get compareAtPrice; dynamic get costPrice;
/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<ProductVariant> get copyWith => _$ProductVariantCopyWithImpl<ProductVariant>(this as ProductVariant, _$identity);

  /// Serializes this ProductVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductVariant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariant&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.sku, _this.sku) || other.sku == _this.sku)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.price, _this.price)&&const DeepCollectionEquality().equals(other.compareAtPrice, _this.compareAtPrice)&&const DeepCollectionEquality().equals(other.costPrice, _this.costPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductVariant;
  return Object.hash(runtimeType,_this.id,_this.sku,_this.status,const DeepCollectionEquality().hash(_this.price),const DeepCollectionEquality().hash(_this.compareAtPrice),const DeepCollectionEquality().hash(_this.costPrice));
}

@override
String toString() {
  final _this = this as ProductVariant;
  return 'ProductVariant(id: ${_this.id}, sku: ${_this.sku}, status: ${_this.status}, price: ${_this.price}, compareAtPrice: ${_this.compareAtPrice}, costPrice: ${_this.costPrice})';
}


}

/// @nodoc
abstract mixin class $ProductVariantCopyWith<$Res>  {
  factory $ProductVariantCopyWith(ProductVariant value, $Res Function(ProductVariant) _then) = _$ProductVariantCopyWithImpl;
@useResult
$Res call({
 String? id, String? sku, String? status, dynamic price, dynamic compareAtPrice, dynamic costPrice
});




}
/// @nodoc
class _$ProductVariantCopyWithImpl<$Res>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._self, this._then);

  final ProductVariant _self;
  final $Res Function(ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sku = freezed,Object? status = freezed,Object? price = freezed,Object? compareAtPrice = freezed,Object? costPrice = freezed,}) {
  return _then(ProductVariant(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as dynamic,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as dynamic,costPrice: freezed == costPrice ? _self.costPrice : costPrice // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariant].
extension ProductVariantPatterns on ProductVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariant value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariant value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? sku,  String? status,  dynamic price,  dynamic compareAtPrice,  dynamic costPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.id,_that.sku,_that.status,_that.price,_that.compareAtPrice,_that.costPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? sku,  String? status,  dynamic price,  dynamic compareAtPrice,  dynamic costPrice)  $default,) {final _that = this;
switch (_that) {
case _ProductVariant():
return $default(_that.id,_that.sku,_that.status,_that.price,_that.compareAtPrice,_that.costPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? sku,  String? status,  dynamic price,  dynamic compareAtPrice,  dynamic costPrice)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.id,_that.sku,_that.status,_that.price,_that.compareAtPrice,_that.costPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariant extends ProductVariant {
  const _ProductVariant({this.id, this.sku, this.status, this.price, this.compareAtPrice, this.costPrice}): super._();
  factory _ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);

@override final  String? id;
@override final  String? sku;
@override final  String? status;
@override final  dynamic price;
@override final  dynamic compareAtPrice;
@override final  dynamic costPrice;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantCopyWith<_ProductVariant> get copyWith => __$ProductVariantCopyWithImpl<_ProductVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.price, price)&&const DeepCollectionEquality().equals(other.compareAtPrice, compareAtPrice)&&const DeepCollectionEquality().equals(other.costPrice, costPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,sku,status,const DeepCollectionEquality().hash(price),const DeepCollectionEquality().hash(compareAtPrice),const DeepCollectionEquality().hash(costPrice));
}

@override
String toString() {
    return 'ProductVariant(id: $id, sku: $sku, status: $status, price: $price, compareAtPrice: $compareAtPrice, costPrice: $costPrice)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantCopyWith<$Res> implements $ProductVariantCopyWith<$Res> {
  factory _$ProductVariantCopyWith(_ProductVariant value, $Res Function(_ProductVariant) _then) = __$ProductVariantCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? sku, String? status, dynamic price, dynamic compareAtPrice, dynamic costPrice
});




}
/// @nodoc
class __$ProductVariantCopyWithImpl<$Res>
    implements _$ProductVariantCopyWith<$Res> {
  __$ProductVariantCopyWithImpl(this._self, this._then);

  final _ProductVariant _self;
  final $Res Function(_ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sku = freezed,Object? status = freezed,Object? price = freezed,Object? compareAtPrice = freezed,Object? costPrice = freezed,}) {
  return _then(_ProductVariant(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as dynamic,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as dynamic,costPrice: freezed == costPrice ? _self.costPrice : costPrice // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
