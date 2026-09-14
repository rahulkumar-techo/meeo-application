// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_lists.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to fetch the active shopping cart and its item list.

@ProviderFor(cartLists)
final cartListsProvider = CartListsProvider._();

/// Provider to fetch the active shopping cart and its item list.

final class CartListsProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartResponse>,
          CartResponse,
          FutureOr<CartResponse>
        >
    with $FutureModifier<CartResponse>, $FutureProvider<CartResponse> {
  /// Provider to fetch the active shopping cart and its item list.
  CartListsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartListsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartListsHash();

  @$internal
  @override
  $FutureProviderElement<CartResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CartResponse> create(Ref ref) {
    return cartLists(ref);
  }
}

String _$cartListsHash() => r'94961155df01bf46d83589e147c9e9ff9e27d527';
