// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartResponse {

 bool get success; String get message; CartData? get data;
/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseCopyWith<CartResponse> get copyWith => _$CartResponseCopyWithImpl<CartResponse>(this as CartResponse, _$identity);

  /// Serializes this CartResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponse&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.data, _this.data) || other.data == _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartResponse;
  return Object.hash(runtimeType,_this.success,_this.message,_this.data);
}

@override
String toString() {
  final _this = this as CartResponse;
  return 'CartResponse(success: ${_this.success}, message: ${_this.message}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $CartResponseCopyWith<$Res>  {
  factory $CartResponseCopyWith(CartResponse value, $Res Function(CartResponse) _then) = _$CartResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, CartData? data
});


$CartDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CartResponseCopyWithImpl<$Res>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._self, this._then);

  final CartResponse _self;
  final $Res Function(CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(CartResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartData?,
  ));
}
/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartResponse].
extension CartResponsePatterns on CartResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponse value)  $default,){
final _that = this;
switch (_that) {
case _CartResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  CartData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  CartData? data)  $default,) {final _that = this;
switch (_that) {
case _CartResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  CartData? data)?  $default,) {final _that = this;
switch (_that) {
case _CartResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartResponse implements CartResponse {
  const _CartResponse({this.success = true, this.message = '', this.data});
  factory _CartResponse.fromJson(Map<String, dynamic> json) => _$CartResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override final  CartData? data;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseCopyWith<_CartResponse> get copyWith => __$CartResponseCopyWithImpl<_CartResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,message,data);
}

@override
String toString() {
    return 'CartResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CartResponseCopyWith<$Res> implements $CartResponseCopyWith<$Res> {
  factory _$CartResponseCopyWith(_CartResponse value, $Res Function(_CartResponse) _then) = __$CartResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, CartData? data
});


@override $CartDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CartResponseCopyWithImpl<$Res>
    implements _$CartResponseCopyWith<$Res> {
  __$CartResponseCopyWithImpl(this._self, this._then);

  final _CartResponse _self;
  final $Res Function(_CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_CartResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartData?,
  ));
}

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CartData {

/// Unique session identifier
 String? get sessionId;/// Unique identifier of the cart
 String get id;/// ID of the user owning this cart, or null if guest
 String? get userId;/// Indicates whether the cart belongs to a guest user
 bool get isGuest;/// Expiration timestamp of the cart session
 String? get expiresAt;/// Cart creation timestamp (ISO 8601)
 String? get createdAt;/// Cart last update timestamp (ISO 8601)
 String? get updatedAt;/// Summary metadata of total cost, item count, and currency
 CartSummary? get summary;/// List of cart items
 List<CartItemModel> get items;
/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartDataCopyWith<CartData> get copyWith => _$CartDataCopyWithImpl<CartData>(this as CartData, _$identity);

  /// Serializes this CartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartData&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.isGuest, _this.isGuest) || other.isGuest == _this.isGuest)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartData;
  return Object.hash(runtimeType,_this.sessionId,_this.id,_this.userId,_this.isGuest,_this.expiresAt,_this.createdAt,_this.updatedAt,_this.summary,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as CartData;
  return 'CartData(sessionId: ${_this.sessionId}, id: ${_this.id}, userId: ${_this.userId}, isGuest: ${_this.isGuest}, expiresAt: ${_this.expiresAt}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, summary: ${_this.summary}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $CartDataCopyWith<$Res>  {
  factory $CartDataCopyWith(CartData value, $Res Function(CartData) _then) = _$CartDataCopyWithImpl;
@useResult
$Res call({
 String? sessionId, String id, String? userId, bool isGuest, String? expiresAt, String? createdAt, String? updatedAt, CartSummary? summary, List<CartItemModel> items
});


$CartSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$CartDataCopyWithImpl<$Res>
    implements $CartDataCopyWith<$Res> {
  _$CartDataCopyWithImpl(this._self, this._then);

  final CartData _self;
  final $Res Function(CartData) _then;

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? id = null,Object? userId = freezed,Object? isGuest = null,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? summary = freezed,Object? items = null,}) {
  return _then(CartData(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,
  ));
}
/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $CartSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartData].
extension CartDataPatterns on CartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartData value)  $default,){
final _that = this;
switch (_that) {
case _CartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartData value)?  $default,){
final _that = this;
switch (_that) {
case _CartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? sessionId,  String id,  String? userId,  bool isGuest,  String? expiresAt,  String? createdAt,  String? updatedAt,  CartSummary? summary,  List<CartItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartData() when $default != null:
return $default(_that.sessionId,_that.id,_that.userId,_that.isGuest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.summary,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? sessionId,  String id,  String? userId,  bool isGuest,  String? expiresAt,  String? createdAt,  String? updatedAt,  CartSummary? summary,  List<CartItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _CartData():
return $default(_that.sessionId,_that.id,_that.userId,_that.isGuest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.summary,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? sessionId,  String id,  String? userId,  bool isGuest,  String? expiresAt,  String? createdAt,  String? updatedAt,  CartSummary? summary,  List<CartItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _CartData() when $default != null:
return $default(_that.sessionId,_that.id,_that.userId,_that.isGuest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.summary,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartData extends CartData {
  const _CartData({this.sessionId, this.id = '', this.userId, this.isGuest = false, this.expiresAt, this.createdAt, this.updatedAt, this.summary,  List<CartItemModel> items = const []}): _items = items,super._();
  factory _CartData.fromJson(Map<String, dynamic> json) => _$CartDataFromJson(json);

/// Unique session identifier
@override final  String? sessionId;
/// Unique identifier of the cart
@override@JsonKey() final  String id;
/// ID of the user owning this cart, or null if guest
@override final  String? userId;
/// Indicates whether the cart belongs to a guest user
@override@JsonKey() final  bool isGuest;
/// Expiration timestamp of the cart session
@override final  String? expiresAt;
/// Cart creation timestamp (ISO 8601)
@override final  String? createdAt;
/// Cart last update timestamp (ISO 8601)
@override final  String? updatedAt;
/// Summary metadata of total cost, item count, and currency
@override final  CartSummary? summary;
/// List of cart items
 final  List<CartItemModel> _items;
/// List of cart items
@override@JsonKey() List<CartItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartDataCopyWith<_CartData> get copyWith => __$CartDataCopyWithImpl<_CartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartData&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,id,userId,isGuest,expiresAt,createdAt,updatedAt,summary,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'CartData(sessionId: $sessionId, id: $id, userId: $userId, isGuest: $isGuest, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, summary: $summary, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CartDataCopyWith<$Res> implements $CartDataCopyWith<$Res> {
  factory _$CartDataCopyWith(_CartData value, $Res Function(_CartData) _then) = __$CartDataCopyWithImpl;
@override @useResult
$Res call({
 String? sessionId, String id, String? userId, bool isGuest, String? expiresAt, String? createdAt, String? updatedAt, CartSummary? summary, List<CartItemModel> items
});


@override $CartSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$CartDataCopyWithImpl<$Res>
    implements _$CartDataCopyWith<$Res> {
  __$CartDataCopyWithImpl(this._self, this._then);

  final _CartData _self;
  final $Res Function(_CartData) _then;

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? id = null,Object? userId = freezed,Object? isGuest = null,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? summary = freezed,Object? items = null,}) {
  return _then(_CartData(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,
  ));
}

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $CartSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$CartSummary {

/// Number of unique line items in the cart
 int get itemCount;/// Total quantity of all items combined in the cart
 int get totalItems;/// Subtotal price before discounts or taxes
 double get subtotal;/// ISO currency code (e.g., "USD", "INR")
 String get currency;
/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<CartSummary> get copyWith => _$CartSummaryCopyWithImpl<CartSummary>(this as CartSummary, _$identity);

  /// Serializes this CartSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSummary&&(identical(other.itemCount, _this.itemCount) || other.itemCount == _this.itemCount)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.currency, _this.currency) || other.currency == _this.currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartSummary;
  return Object.hash(runtimeType,_this.itemCount,_this.totalItems,_this.subtotal,_this.currency);
}

@override
String toString() {
  final _this = this as CartSummary;
  return 'CartSummary(itemCount: ${_this.itemCount}, totalItems: ${_this.totalItems}, subtotal: ${_this.subtotal}, currency: ${_this.currency})';
}


}

/// @nodoc
abstract mixin class $CartSummaryCopyWith<$Res>  {
  factory $CartSummaryCopyWith(CartSummary value, $Res Function(CartSummary) _then) = _$CartSummaryCopyWithImpl;
@useResult
$Res call({
 int itemCount, int totalItems, double subtotal, String currency
});




}
/// @nodoc
class _$CartSummaryCopyWithImpl<$Res>
    implements $CartSummaryCopyWith<$Res> {
  _$CartSummaryCopyWithImpl(this._self, this._then);

  final CartSummary _self;
  final $Res Function(CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemCount = null,Object? totalItems = null,Object? subtotal = null,Object? currency = null,}) {
  return _then(CartSummary(
itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CartSummary].
extension CartSummaryPatterns on CartSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartSummary value)  $default,){
final _that = this;
switch (_that) {
case _CartSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int itemCount,  int totalItems,  double subtotal,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
return $default(_that.itemCount,_that.totalItems,_that.subtotal,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int itemCount,  int totalItems,  double subtotal,  String currency)  $default,) {final _that = this;
switch (_that) {
case _CartSummary():
return $default(_that.itemCount,_that.totalItems,_that.subtotal,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int itemCount,  int totalItems,  double subtotal,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _CartSummary() when $default != null:
return $default(_that.itemCount,_that.totalItems,_that.subtotal,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartSummary extends CartSummary {
  const _CartSummary({this.itemCount = 0, this.totalItems = 0, this.subtotal = 0.0, this.currency = 'USD'}): super._();
  factory _CartSummary.fromJson(Map<String, dynamic> json) => _$CartSummaryFromJson(json);

/// Number of unique line items in the cart
@override@JsonKey() final  int itemCount;
/// Total quantity of all items combined in the cart
@override@JsonKey() final  int totalItems;
/// Subtotal price before discounts or taxes
@override@JsonKey() final  double subtotal;
/// ISO currency code (e.g., "USD", "INR")
@override@JsonKey() final  String currency;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSummaryCopyWith<_CartSummary> get copyWith => __$CartSummaryCopyWithImpl<_CartSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSummary&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,itemCount,totalItems,subtotal,currency);
}

@override
String toString() {
    return 'CartSummary(itemCount: $itemCount, totalItems: $totalItems, subtotal: $subtotal, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$CartSummaryCopyWith<$Res> implements $CartSummaryCopyWith<$Res> {
  factory _$CartSummaryCopyWith(_CartSummary value, $Res Function(_CartSummary) _then) = __$CartSummaryCopyWithImpl;
@override @useResult
$Res call({
 int itemCount, int totalItems, double subtotal, String currency
});




}
/// @nodoc
class __$CartSummaryCopyWithImpl<$Res>
    implements _$CartSummaryCopyWith<$Res> {
  __$CartSummaryCopyWithImpl(this._self, this._then);

  final _CartSummary _self;
  final $Res Function(_CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemCount = null,Object? totalItems = null,Object? subtotal = null,Object? currency = null,}) {
  return _then(_CartSummary(
itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CartItemModel {

/// Unique identifier of the cart line item
 String get id;/// ID of the associated product variant
 String get variantId;/// Quantity of this item added to the cart
 int get quantity;/// Price per unit for this item
 double get unitPrice;/// Original / crossed-out price per unit (if on discount)
 double? get compareAtPrice;/// Total price for this line item (quantity * unitPrice)
 double get lineTotal;/// Item creation timestamp (ISO 8601)
 String? get createdAt;/// Item last update timestamp (ISO 8601)
 String? get updatedAt;/// Real-time stock status and availability info
 StockInfoModel? get stockInfo;/// Basic product details associated with this item
 CartProductModel? get product;/// Variant specifications (SKU, barcode, attributes)
 CartVariantModel? get variant;
/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemModelCopyWith<CartItemModel> get copyWith => _$CartItemModelCopyWithImpl<CartItemModel>(this as CartItemModel, _$identity);

  /// Serializes this CartItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unitPrice, _this.unitPrice) || other.unitPrice == _this.unitPrice)&&(identical(other.compareAtPrice, _this.compareAtPrice) || other.compareAtPrice == _this.compareAtPrice)&&(identical(other.lineTotal, _this.lineTotal) || other.lineTotal == _this.lineTotal)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.stockInfo, _this.stockInfo) || other.stockInfo == _this.stockInfo)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.variant, _this.variant) || other.variant == _this.variant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartItemModel;
  return Object.hash(runtimeType,_this.id,_this.variantId,_this.quantity,_this.unitPrice,_this.compareAtPrice,_this.lineTotal,_this.createdAt,_this.updatedAt,_this.stockInfo,_this.product,_this.variant);
}

@override
String toString() {
  final _this = this as CartItemModel;
  return 'CartItemModel(id: ${_this.id}, variantId: ${_this.variantId}, quantity: ${_this.quantity}, unitPrice: ${_this.unitPrice}, compareAtPrice: ${_this.compareAtPrice}, lineTotal: ${_this.lineTotal}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, stockInfo: ${_this.stockInfo}, product: ${_this.product}, variant: ${_this.variant})';
}


}

/// @nodoc
abstract mixin class $CartItemModelCopyWith<$Res>  {
  factory $CartItemModelCopyWith(CartItemModel value, $Res Function(CartItemModel) _then) = _$CartItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String variantId, int quantity, double unitPrice, double? compareAtPrice, double lineTotal, String? createdAt, String? updatedAt, StockInfoModel? stockInfo, CartProductModel? product, CartVariantModel? variant
});


$StockInfoModelCopyWith<$Res>? get stockInfo;$CartProductModelCopyWith<$Res>? get product;$CartVariantModelCopyWith<$Res>? get variant;

}
/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._self, this._then);

  final CartItemModel _self;
  final $Res Function(CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? variantId = null,Object? quantity = null,Object? unitPrice = null,Object? compareAtPrice = freezed,Object? lineTotal = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? stockInfo = freezed,Object? product = freezed,Object? variant = freezed,}) {
  return _then(CartItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as double?,lineTotal: null == lineTotal ? _self.lineTotal : lineTotal // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,stockInfo: freezed == stockInfo ? _self.stockInfo : stockInfo // ignore: cast_nullable_to_non_nullable
as StockInfoModel?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartProductModel?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as CartVariantModel?,
  ));
}
/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockInfoModelCopyWith<$Res>? get stockInfo {
    if (_self.stockInfo == null) {
    return null;
  }

  return $StockInfoModelCopyWith<$Res>(_self.stockInfo!, (value) {
    return _then(_self.copyWith(stockInfo: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $CartProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVariantModelCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $CartVariantModelCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItemModel].
extension CartItemModelPatterns on CartItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemModel value)  $default,){
final _that = this;
switch (_that) {
case _CartItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String variantId,  int quantity,  double unitPrice,  double? compareAtPrice,  double lineTotal,  String? createdAt,  String? updatedAt,  StockInfoModel? stockInfo,  CartProductModel? product,  CartVariantModel? variant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.id,_that.variantId,_that.quantity,_that.unitPrice,_that.compareAtPrice,_that.lineTotal,_that.createdAt,_that.updatedAt,_that.stockInfo,_that.product,_that.variant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String variantId,  int quantity,  double unitPrice,  double? compareAtPrice,  double lineTotal,  String? createdAt,  String? updatedAt,  StockInfoModel? stockInfo,  CartProductModel? product,  CartVariantModel? variant)  $default,) {final _that = this;
switch (_that) {
case _CartItemModel():
return $default(_that.id,_that.variantId,_that.quantity,_that.unitPrice,_that.compareAtPrice,_that.lineTotal,_that.createdAt,_that.updatedAt,_that.stockInfo,_that.product,_that.variant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String variantId,  int quantity,  double unitPrice,  double? compareAtPrice,  double lineTotal,  String? createdAt,  String? updatedAt,  StockInfoModel? stockInfo,  CartProductModel? product,  CartVariantModel? variant)?  $default,) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.id,_that.variantId,_that.quantity,_that.unitPrice,_that.compareAtPrice,_that.lineTotal,_that.createdAt,_that.updatedAt,_that.stockInfo,_that.product,_that.variant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemModel extends CartItemModel {
  const _CartItemModel({this.id = '', this.variantId = '', this.quantity = 1, this.unitPrice = 0.0, this.compareAtPrice, this.lineTotal = 0.0, this.createdAt, this.updatedAt, this.stockInfo, this.product, this.variant}): super._();
  factory _CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

/// Unique identifier of the cart line item
@override@JsonKey() final  String id;
/// ID of the associated product variant
@override@JsonKey() final  String variantId;
/// Quantity of this item added to the cart
@override@JsonKey() final  int quantity;
/// Price per unit for this item
@override@JsonKey() final  double unitPrice;
/// Original / crossed-out price per unit (if on discount)
@override final  double? compareAtPrice;
/// Total price for this line item (quantity * unitPrice)
@override@JsonKey() final  double lineTotal;
/// Item creation timestamp (ISO 8601)
@override final  String? createdAt;
/// Item last update timestamp (ISO 8601)
@override final  String? updatedAt;
/// Real-time stock status and availability info
@override final  StockInfoModel? stockInfo;
/// Basic product details associated with this item
@override final  CartProductModel? product;
/// Variant specifications (SKU, barcode, attributes)
@override final  CartVariantModel? variant;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemModelCopyWith<_CartItemModel> get copyWith => __$CartItemModelCopyWithImpl<_CartItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.compareAtPrice, compareAtPrice) || other.compareAtPrice == compareAtPrice)&&(identical(other.lineTotal, lineTotal) || other.lineTotal == lineTotal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.stockInfo, stockInfo) || other.stockInfo == stockInfo)&&(identical(other.product, product) || other.product == product)&&(identical(other.variant, variant) || other.variant == variant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,variantId,quantity,unitPrice,compareAtPrice,lineTotal,createdAt,updatedAt,stockInfo,product,variant);
}

@override
String toString() {
    return 'CartItemModel(id: $id, variantId: $variantId, quantity: $quantity, unitPrice: $unitPrice, compareAtPrice: $compareAtPrice, lineTotal: $lineTotal, createdAt: $createdAt, updatedAt: $updatedAt, stockInfo: $stockInfo, product: $product, variant: $variant)';
}


}

/// @nodoc
abstract mixin class _$CartItemModelCopyWith<$Res> implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(_CartItemModel value, $Res Function(_CartItemModel) _then) = __$CartItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String variantId, int quantity, double unitPrice, double? compareAtPrice, double lineTotal, String? createdAt, String? updatedAt, StockInfoModel? stockInfo, CartProductModel? product, CartVariantModel? variant
});


@override $StockInfoModelCopyWith<$Res>? get stockInfo;@override $CartProductModelCopyWith<$Res>? get product;@override $CartVariantModelCopyWith<$Res>? get variant;

}
/// @nodoc
class __$CartItemModelCopyWithImpl<$Res>
    implements _$CartItemModelCopyWith<$Res> {
  __$CartItemModelCopyWithImpl(this._self, this._then);

  final _CartItemModel _self;
  final $Res Function(_CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? variantId = null,Object? quantity = null,Object? unitPrice = null,Object? compareAtPrice = freezed,Object? lineTotal = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? stockInfo = freezed,Object? product = freezed,Object? variant = freezed,}) {
  return _then(_CartItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,compareAtPrice: freezed == compareAtPrice ? _self.compareAtPrice : compareAtPrice // ignore: cast_nullable_to_non_nullable
as double?,lineTotal: null == lineTotal ? _self.lineTotal : lineTotal // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,stockInfo: freezed == stockInfo ? _self.stockInfo : stockInfo // ignore: cast_nullable_to_non_nullable
as StockInfoModel?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartProductModel?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as CartVariantModel?,
  ));
}

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockInfoModelCopyWith<$Res>? get stockInfo {
    if (_self.stockInfo == null) {
    return null;
  }

  return $StockInfoModelCopyWith<$Res>(_self.stockInfo!, (value) {
    return _then(_self.copyWith(stockInfo: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $CartProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVariantModelCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $CartVariantModelCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}
}


/// @nodoc
mixin _$StockInfoModel {

/// Available units in inventory
 int get availableStock;/// Whether the product is currently purchasable/in stock
 bool get isAvailable;/// Whether inventory is running low
 bool get isLowStock;
/// Create a copy of StockInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockInfoModelCopyWith<StockInfoModel> get copyWith => _$StockInfoModelCopyWithImpl<StockInfoModel>(this as StockInfoModel, _$identity);

  /// Serializes this StockInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockInfoModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockInfoModel&&(identical(other.availableStock, _this.availableStock) || other.availableStock == _this.availableStock)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable)&&(identical(other.isLowStock, _this.isLowStock) || other.isLowStock == _this.isLowStock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockInfoModel;
  return Object.hash(runtimeType,_this.availableStock,_this.isAvailable,_this.isLowStock);
}

@override
String toString() {
  final _this = this as StockInfoModel;
  return 'StockInfoModel(availableStock: ${_this.availableStock}, isAvailable: ${_this.isAvailable}, isLowStock: ${_this.isLowStock})';
}


}

/// @nodoc
abstract mixin class $StockInfoModelCopyWith<$Res>  {
  factory $StockInfoModelCopyWith(StockInfoModel value, $Res Function(StockInfoModel) _then) = _$StockInfoModelCopyWithImpl;
@useResult
$Res call({
 int availableStock, bool isAvailable, bool isLowStock
});




}
/// @nodoc
class _$StockInfoModelCopyWithImpl<$Res>
    implements $StockInfoModelCopyWith<$Res> {
  _$StockInfoModelCopyWithImpl(this._self, this._then);

  final StockInfoModel _self;
  final $Res Function(StockInfoModel) _then;

/// Create a copy of StockInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availableStock = null,Object? isAvailable = null,Object? isLowStock = null,}) {
  return _then(StockInfoModel(
availableStock: null == availableStock ? _self.availableStock : availableStock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,isLowStock: null == isLowStock ? _self.isLowStock : isLowStock // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StockInfoModel].
extension StockInfoModelPatterns on StockInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _StockInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int availableStock,  bool isAvailable,  bool isLowStock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockInfoModel() when $default != null:
return $default(_that.availableStock,_that.isAvailable,_that.isLowStock);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int availableStock,  bool isAvailable,  bool isLowStock)  $default,) {final _that = this;
switch (_that) {
case _StockInfoModel():
return $default(_that.availableStock,_that.isAvailable,_that.isLowStock);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int availableStock,  bool isAvailable,  bool isLowStock)?  $default,) {final _that = this;
switch (_that) {
case _StockInfoModel() when $default != null:
return $default(_that.availableStock,_that.isAvailable,_that.isLowStock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockInfoModel implements StockInfoModel {
  const _StockInfoModel({this.availableStock = 0, this.isAvailable = true, this.isLowStock = false});
  factory _StockInfoModel.fromJson(Map<String, dynamic> json) => _$StockInfoModelFromJson(json);

/// Available units in inventory
@override@JsonKey() final  int availableStock;
/// Whether the product is currently purchasable/in stock
@override@JsonKey() final  bool isAvailable;
/// Whether inventory is running low
@override@JsonKey() final  bool isLowStock;

/// Create a copy of StockInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockInfoModelCopyWith<_StockInfoModel> get copyWith => __$StockInfoModelCopyWithImpl<_StockInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockInfoModel&&(identical(other.availableStock, availableStock) || other.availableStock == availableStock)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.isLowStock, isLowStock) || other.isLowStock == isLowStock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,availableStock,isAvailable,isLowStock);
}

@override
String toString() {
    return 'StockInfoModel(availableStock: $availableStock, isAvailable: $isAvailable, isLowStock: $isLowStock)';
}


}

/// @nodoc
abstract mixin class _$StockInfoModelCopyWith<$Res> implements $StockInfoModelCopyWith<$Res> {
  factory _$StockInfoModelCopyWith(_StockInfoModel value, $Res Function(_StockInfoModel) _then) = __$StockInfoModelCopyWithImpl;
@override @useResult
$Res call({
 int availableStock, bool isAvailable, bool isLowStock
});




}
/// @nodoc
class __$StockInfoModelCopyWithImpl<$Res>
    implements _$StockInfoModelCopyWith<$Res> {
  __$StockInfoModelCopyWithImpl(this._self, this._then);

  final _StockInfoModel _self;
  final $Res Function(_StockInfoModel) _then;

/// Create a copy of StockInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availableStock = null,Object? isAvailable = null,Object? isLowStock = null,}) {
  return _then(_StockInfoModel(
availableStock: null == availableStock ? _self.availableStock : availableStock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,isLowStock: null == isLowStock ? _self.isLowStock : isLowStock // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CartProductModel {

/// Product ID
 String get id;/// Product display name
 String get name;/// URL-friendly slug
 String? get slug;/// Thumbnail image URL for cart item preview
 String? get thumbnail;/// Category information
 CartCategoryModel? get category;/// Brand information
 CartBrandModel? get brand;
/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartProductModelCopyWith<CartProductModel> get copyWith => _$CartProductModelCopyWithImpl<CartProductModel>(this as CartProductModel, _$identity);

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartProductModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartProductModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.brand, _this.brand) || other.brand == _this.brand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartProductModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.thumbnail,_this.category,_this.brand);
}

@override
String toString() {
  final _this = this as CartProductModel;
  return 'CartProductModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, thumbnail: ${_this.thumbnail}, category: ${_this.category}, brand: ${_this.brand})';
}


}

/// @nodoc
abstract mixin class $CartProductModelCopyWith<$Res>  {
  factory $CartProductModelCopyWith(CartProductModel value, $Res Function(CartProductModel) _then) = _$CartProductModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? thumbnail, CartCategoryModel? category, CartBrandModel? brand
});


$CartCategoryModelCopyWith<$Res>? get category;$CartBrandModelCopyWith<$Res>? get brand;

}
/// @nodoc
class _$CartProductModelCopyWithImpl<$Res>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._self, this._then);

  final CartProductModel _self;
  final $Res Function(CartProductModel) _then;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? thumbnail = freezed,Object? category = freezed,Object? brand = freezed,}) {
  return _then(CartProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CartCategoryModel?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CartBrandModel?,
  ));
}
/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CartCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $CartBrandModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartProductModel].
extension CartProductModelPatterns on CartProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartProductModel value)  $default,){
final _that = this;
switch (_that) {
case _CartProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? thumbnail,  CartCategoryModel? category,  CartBrandModel? brand)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.thumbnail,_that.category,_that.brand);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? thumbnail,  CartCategoryModel? category,  CartBrandModel? brand)  $default,) {final _that = this;
switch (_that) {
case _CartProductModel():
return $default(_that.id,_that.name,_that.slug,_that.thumbnail,_that.category,_that.brand);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? thumbnail,  CartCategoryModel? category,  CartBrandModel? brand)?  $default,) {final _that = this;
switch (_that) {
case _CartProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.thumbnail,_that.category,_that.brand);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartProductModel implements CartProductModel {
  const _CartProductModel({this.id = '', this.name = '', this.slug, this.thumbnail, this.category, this.brand});
  factory _CartProductModel.fromJson(Map<String, dynamic> json) => _$CartProductModelFromJson(json);

/// Product ID
@override@JsonKey() final  String id;
/// Product display name
@override@JsonKey() final  String name;
/// URL-friendly slug
@override final  String? slug;
/// Thumbnail image URL for cart item preview
@override final  String? thumbnail;
/// Category information
@override final  CartCategoryModel? category;
/// Brand information
@override final  CartBrandModel? brand;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartProductModelCopyWith<_CartProductModel> get copyWith => __$CartProductModelCopyWithImpl<_CartProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,thumbnail,category,brand);
}

@override
String toString() {
    return 'CartProductModel(id: $id, name: $name, slug: $slug, thumbnail: $thumbnail, category: $category, brand: $brand)';
}


}

/// @nodoc
abstract mixin class _$CartProductModelCopyWith<$Res> implements $CartProductModelCopyWith<$Res> {
  factory _$CartProductModelCopyWith(_CartProductModel value, $Res Function(_CartProductModel) _then) = __$CartProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? thumbnail, CartCategoryModel? category, CartBrandModel? brand
});


@override $CartCategoryModelCopyWith<$Res>? get category;@override $CartBrandModelCopyWith<$Res>? get brand;

}
/// @nodoc
class __$CartProductModelCopyWithImpl<$Res>
    implements _$CartProductModelCopyWith<$Res> {
  __$CartProductModelCopyWithImpl(this._self, this._then);

  final _CartProductModel _self;
  final $Res Function(_CartProductModel) _then;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? thumbnail = freezed,Object? category = freezed,Object? brand = freezed,}) {
  return _then(_CartProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CartCategoryModel?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CartBrandModel?,
  ));
}

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CartCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $CartBrandModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}


/// @nodoc
mixin _$CartCategoryModel {

 String get id; String get name; String? get slug;
/// Create a copy of CartCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCategoryModelCopyWith<CartCategoryModel> get copyWith => _$CartCategoryModelCopyWithImpl<CartCategoryModel>(this as CartCategoryModel, _$identity);

  /// Serializes this CartCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartCategoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCategoryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartCategoryModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug);
}

@override
String toString() {
  final _this = this as CartCategoryModel;
  return 'CartCategoryModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug})';
}


}

/// @nodoc
abstract mixin class $CartCategoryModelCopyWith<$Res>  {
  factory $CartCategoryModelCopyWith(CartCategoryModel value, $Res Function(CartCategoryModel) _then) = _$CartCategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class _$CartCategoryModelCopyWithImpl<$Res>
    implements $CartCategoryModelCopyWith<$Res> {
  _$CartCategoryModelCopyWithImpl(this._self, this._then);

  final CartCategoryModel _self;
  final $Res Function(CartCategoryModel) _then;

/// Create a copy of CartCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(CartCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCategoryModel].
extension CartCategoryModelPatterns on CartCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CartCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)  $default,) {final _that = this;
switch (_that) {
case _CartCategoryModel():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug)?  $default,) {final _that = this;
switch (_that) {
case _CartCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCategoryModel implements CartCategoryModel {
  const _CartCategoryModel({this.id = '', this.name = '', this.slug});
  factory _CartCategoryModel.fromJson(Map<String, dynamic> json) => _$CartCategoryModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override final  String? slug;

/// Create a copy of CartCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCategoryModelCopyWith<_CartCategoryModel> get copyWith => __$CartCategoryModelCopyWithImpl<_CartCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug);
}

@override
String toString() {
    return 'CartCategoryModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$CartCategoryModelCopyWith<$Res> implements $CartCategoryModelCopyWith<$Res> {
  factory _$CartCategoryModelCopyWith(_CartCategoryModel value, $Res Function(_CartCategoryModel) _then) = __$CartCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class __$CartCategoryModelCopyWithImpl<$Res>
    implements _$CartCategoryModelCopyWith<$Res> {
  __$CartCategoryModelCopyWithImpl(this._self, this._then);

  final _CartCategoryModel _self;
  final $Res Function(_CartCategoryModel) _then;

/// Create a copy of CartCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(_CartCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartBrandModel {

 String get id; String get name; String? get slug;
/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<CartBrandModel> get copyWith => _$CartBrandModelCopyWithImpl<CartBrandModel>(this as CartBrandModel, _$identity);

  /// Serializes this CartBrandModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartBrandModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartBrandModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartBrandModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug);
}

@override
String toString() {
  final _this = this as CartBrandModel;
  return 'CartBrandModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug})';
}


}

/// @nodoc
abstract mixin class $CartBrandModelCopyWith<$Res>  {
  factory $CartBrandModelCopyWith(CartBrandModel value, $Res Function(CartBrandModel) _then) = _$CartBrandModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class _$CartBrandModelCopyWithImpl<$Res>
    implements $CartBrandModelCopyWith<$Res> {
  _$CartBrandModelCopyWithImpl(this._self, this._then);

  final CartBrandModel _self;
  final $Res Function(CartBrandModel) _then;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(CartBrandModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartBrandModel].
extension CartBrandModelPatterns on CartBrandModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartBrandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartBrandModel value)  $default,){
final _that = this;
switch (_that) {
case _CartBrandModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartBrandModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)  $default,) {final _that = this;
switch (_that) {
case _CartBrandModel():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug)?  $default,) {final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartBrandModel implements CartBrandModel {
  const _CartBrandModel({this.id = '', this.name = '', this.slug});
  factory _CartBrandModel.fromJson(Map<String, dynamic> json) => _$CartBrandModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override final  String? slug;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartBrandModelCopyWith<_CartBrandModel> get copyWith => __$CartBrandModelCopyWithImpl<_CartBrandModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartBrandModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartBrandModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug);
}

@override
String toString() {
    return 'CartBrandModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$CartBrandModelCopyWith<$Res> implements $CartBrandModelCopyWith<$Res> {
  factory _$CartBrandModelCopyWith(_CartBrandModel value, $Res Function(_CartBrandModel) _then) = __$CartBrandModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class __$CartBrandModelCopyWithImpl<$Res>
    implements _$CartBrandModelCopyWith<$Res> {
  __$CartBrandModelCopyWithImpl(this._self, this._then);

  final _CartBrandModel _self;
  final $Res Function(_CartBrandModel) _then;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(_CartBrandModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartVariantModel {

/// Stock Keeping Unit
 String? get sku;/// Barcode string
 String? get barcode;/// Key-value attribute list (e.g., Color: Black, Material: Aluminium)
 List<CartVariantAttributeModel> get attributes;
/// Create a copy of CartVariantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartVariantModelCopyWith<CartVariantModel> get copyWith => _$CartVariantModelCopyWithImpl<CartVariantModel>(this as CartVariantModel, _$identity);

  /// Serializes this CartVariantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartVariantModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartVariantModel&&(identical(other.sku, _this.sku) || other.sku == _this.sku)&&(identical(other.barcode, _this.barcode) || other.barcode == _this.barcode)&&const DeepCollectionEquality().equals(other.attributes, _this.attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartVariantModel;
  return Object.hash(runtimeType,_this.sku,_this.barcode,const DeepCollectionEquality().hash(_this.attributes));
}

@override
String toString() {
  final _this = this as CartVariantModel;
  return 'CartVariantModel(sku: ${_this.sku}, barcode: ${_this.barcode}, attributes: ${_this.attributes})';
}


}

/// @nodoc
abstract mixin class $CartVariantModelCopyWith<$Res>  {
  factory $CartVariantModelCopyWith(CartVariantModel value, $Res Function(CartVariantModel) _then) = _$CartVariantModelCopyWithImpl;
@useResult
$Res call({
 String? sku, String? barcode, List<CartVariantAttributeModel> attributes
});




}
/// @nodoc
class _$CartVariantModelCopyWithImpl<$Res>
    implements $CartVariantModelCopyWith<$Res> {
  _$CartVariantModelCopyWithImpl(this._self, this._then);

  final CartVariantModel _self;
  final $Res Function(CartVariantModel) _then;

/// Create a copy of CartVariantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sku = freezed,Object? barcode = freezed,Object? attributes = null,}) {
  return _then(CartVariantModel(
sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<CartVariantAttributeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartVariantModel].
extension CartVariantModelPatterns on CartVariantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartVariantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartVariantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartVariantModel value)  $default,){
final _that = this;
switch (_that) {
case _CartVariantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartVariantModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartVariantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? sku,  String? barcode,  List<CartVariantAttributeModel> attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartVariantModel() when $default != null:
return $default(_that.sku,_that.barcode,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? sku,  String? barcode,  List<CartVariantAttributeModel> attributes)  $default,) {final _that = this;
switch (_that) {
case _CartVariantModel():
return $default(_that.sku,_that.barcode,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? sku,  String? barcode,  List<CartVariantAttributeModel> attributes)?  $default,) {final _that = this;
switch (_that) {
case _CartVariantModel() when $default != null:
return $default(_that.sku,_that.barcode,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartVariantModel extends CartVariantModel {
  const _CartVariantModel({this.sku, this.barcode,  List<CartVariantAttributeModel> attributes = const []}): _attributes = attributes,super._();
  factory _CartVariantModel.fromJson(Map<String, dynamic> json) => _$CartVariantModelFromJson(json);

/// Stock Keeping Unit
@override final  String? sku;
/// Barcode string
@override final  String? barcode;
/// Key-value attribute list (e.g., Color: Black, Material: Aluminium)
 final  List<CartVariantAttributeModel> _attributes;
/// Key-value attribute list (e.g., Color: Black, Material: Aluminium)
@override@JsonKey() List<CartVariantAttributeModel> get attributes {
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributes);
}


/// Create a copy of CartVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartVariantModelCopyWith<_CartVariantModel> get copyWith => __$CartVariantModelCopyWithImpl<_CartVariantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartVariantModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartVariantModel&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&const DeepCollectionEquality().equals(other.attributes, _attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sku,barcode,const DeepCollectionEquality().hash(_attributes));
}

@override
String toString() {
    return 'CartVariantModel(sku: $sku, barcode: $barcode, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$CartVariantModelCopyWith<$Res> implements $CartVariantModelCopyWith<$Res> {
  factory _$CartVariantModelCopyWith(_CartVariantModel value, $Res Function(_CartVariantModel) _then) = __$CartVariantModelCopyWithImpl;
@override @useResult
$Res call({
 String? sku, String? barcode, List<CartVariantAttributeModel> attributes
});




}
/// @nodoc
class __$CartVariantModelCopyWithImpl<$Res>
    implements _$CartVariantModelCopyWith<$Res> {
  __$CartVariantModelCopyWithImpl(this._self, this._then);

  final _CartVariantModel _self;
  final $Res Function(_CartVariantModel) _then;

/// Create a copy of CartVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sku = freezed,Object? barcode = freezed,Object? attributes = null,}) {
  return _then(_CartVariantModel(
sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<CartVariantAttributeModel>,
  ));
}


}


/// @nodoc
mixin _$CartVariantAttributeModel {

 String get attribute; String get value;
/// Create a copy of CartVariantAttributeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartVariantAttributeModelCopyWith<CartVariantAttributeModel> get copyWith => _$CartVariantAttributeModelCopyWithImpl<CartVariantAttributeModel>(this as CartVariantAttributeModel, _$identity);

  /// Serializes this CartVariantAttributeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartVariantAttributeModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartVariantAttributeModel&&(identical(other.attribute, _this.attribute) || other.attribute == _this.attribute)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartVariantAttributeModel;
  return Object.hash(runtimeType,_this.attribute,_this.value);
}

@override
String toString() {
  final _this = this as CartVariantAttributeModel;
  return 'CartVariantAttributeModel(attribute: ${_this.attribute}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $CartVariantAttributeModelCopyWith<$Res>  {
  factory $CartVariantAttributeModelCopyWith(CartVariantAttributeModel value, $Res Function(CartVariantAttributeModel) _then) = _$CartVariantAttributeModelCopyWithImpl;
@useResult
$Res call({
 String attribute, String value
});




}
/// @nodoc
class _$CartVariantAttributeModelCopyWithImpl<$Res>
    implements $CartVariantAttributeModelCopyWith<$Res> {
  _$CartVariantAttributeModelCopyWithImpl(this._self, this._then);

  final CartVariantAttributeModel _self;
  final $Res Function(CartVariantAttributeModel) _then;

/// Create a copy of CartVariantAttributeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attribute = null,Object? value = null,}) {
  return _then(CartVariantAttributeModel(
attribute: null == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CartVariantAttributeModel].
extension CartVariantAttributeModelPatterns on CartVariantAttributeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartVariantAttributeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartVariantAttributeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartVariantAttributeModel value)  $default,){
final _that = this;
switch (_that) {
case _CartVariantAttributeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartVariantAttributeModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartVariantAttributeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String attribute,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartVariantAttributeModel() when $default != null:
return $default(_that.attribute,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String attribute,  String value)  $default,) {final _that = this;
switch (_that) {
case _CartVariantAttributeModel():
return $default(_that.attribute,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String attribute,  String value)?  $default,) {final _that = this;
switch (_that) {
case _CartVariantAttributeModel() when $default != null:
return $default(_that.attribute,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartVariantAttributeModel implements CartVariantAttributeModel {
  const _CartVariantAttributeModel({this.attribute = '', this.value = ''});
  factory _CartVariantAttributeModel.fromJson(Map<String, dynamic> json) => _$CartVariantAttributeModelFromJson(json);

@override@JsonKey() final  String attribute;
@override@JsonKey() final  String value;

/// Create a copy of CartVariantAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartVariantAttributeModelCopyWith<_CartVariantAttributeModel> get copyWith => __$CartVariantAttributeModelCopyWithImpl<_CartVariantAttributeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartVariantAttributeModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartVariantAttributeModel&&(identical(other.attribute, attribute) || other.attribute == attribute)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attribute,value);
}

@override
String toString() {
    return 'CartVariantAttributeModel(attribute: $attribute, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CartVariantAttributeModelCopyWith<$Res> implements $CartVariantAttributeModelCopyWith<$Res> {
  factory _$CartVariantAttributeModelCopyWith(_CartVariantAttributeModel value, $Res Function(_CartVariantAttributeModel) _then) = __$CartVariantAttributeModelCopyWithImpl;
@override @useResult
$Res call({
 String attribute, String value
});




}
/// @nodoc
class __$CartVariantAttributeModelCopyWithImpl<$Res>
    implements _$CartVariantAttributeModelCopyWith<$Res> {
  __$CartVariantAttributeModelCopyWithImpl(this._self, this._then);

  final _CartVariantAttributeModel _self;
  final $Res Function(_CartVariantAttributeModel) _then;

/// Create a copy of CartVariantAttributeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attribute = null,Object? value = null,}) {
  return _then(_CartVariantAttributeModel(
attribute: null == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AddToCartModelBody {

 String get variantId; int get quantity;
/// Create a copy of AddToCartModelBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartModelBodyCopyWith<AddToCartModelBody> get copyWith => _$AddToCartModelBodyCopyWithImpl<AddToCartModelBody>(this as AddToCartModelBody, _$identity);

  /// Serializes this AddToCartModelBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AddToCartModelBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartModelBody&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AddToCartModelBody;
  return Object.hash(runtimeType,_this.variantId,_this.quantity);
}

@override
String toString() {
  final _this = this as AddToCartModelBody;
  return 'AddToCartModelBody(variantId: ${_this.variantId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $AddToCartModelBodyCopyWith<$Res>  {
  factory $AddToCartModelBodyCopyWith(AddToCartModelBody value, $Res Function(AddToCartModelBody) _then) = _$AddToCartModelBodyCopyWithImpl;
@useResult
$Res call({
 String variantId, int quantity
});




}
/// @nodoc
class _$AddToCartModelBodyCopyWithImpl<$Res>
    implements $AddToCartModelBodyCopyWith<$Res> {
  _$AddToCartModelBodyCopyWithImpl(this._self, this._then);

  final AddToCartModelBody _self;
  final $Res Function(AddToCartModelBody) _then;

/// Create a copy of AddToCartModelBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? quantity = null,}) {
  return _then(AddToCartModelBody(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddToCartModelBody].
extension AddToCartModelBodyPatterns on AddToCartModelBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddToCartModelBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddToCartModelBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddToCartModelBody value)  $default,){
final _that = this;
switch (_that) {
case _AddToCartModelBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddToCartModelBody value)?  $default,){
final _that = this;
switch (_that) {
case _AddToCartModelBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String variantId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddToCartModelBody() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String variantId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _AddToCartModelBody():
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String variantId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _AddToCartModelBody() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddToCartModelBody implements AddToCartModelBody {
  const _AddToCartModelBody({required this.variantId, required this.quantity});
  factory _AddToCartModelBody.fromJson(Map<String, dynamic> json) => _$AddToCartModelBodyFromJson(json);

@override final  String variantId;
@override final  int quantity;

/// Create a copy of AddToCartModelBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartModelBodyCopyWith<_AddToCartModelBody> get copyWith => __$AddToCartModelBodyCopyWithImpl<_AddToCartModelBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddToCartModelBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartModelBody&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,variantId,quantity);
}

@override
String toString() {
    return 'AddToCartModelBody(variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AddToCartModelBodyCopyWith<$Res> implements $AddToCartModelBodyCopyWith<$Res> {
  factory _$AddToCartModelBodyCopyWith(_AddToCartModelBody value, $Res Function(_AddToCartModelBody) _then) = __$AddToCartModelBodyCopyWithImpl;
@override @useResult
$Res call({
 String variantId, int quantity
});




}
/// @nodoc
class __$AddToCartModelBodyCopyWithImpl<$Res>
    implements _$AddToCartModelBodyCopyWith<$Res> {
  __$AddToCartModelBodyCopyWithImpl(this._self, this._then);

  final _AddToCartModelBody _self;
  final $Res Function(_AddToCartModelBody) _then;

/// Create a copy of AddToCartModelBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? quantity = null,}) {
  return _then(_AddToCartModelBody(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
