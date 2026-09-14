// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to add an item to the shopping cart by [variantId] and [quantity].

@ProviderFor(addToCart)
final addToCartProvider = AddToCartFamily._();

/// Provider to add an item to the shopping cart by [variantId] and [quantity].

final class AddToCartProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartResponse>,
          CartResponse,
          FutureOr<CartResponse>
        >
    with $FutureModifier<CartResponse>, $FutureProvider<CartResponse> {
  /// Provider to add an item to the shopping cart by [variantId] and [quantity].
  AddToCartProvider._({
    required AddToCartFamily super.from,
    required ({String variantId, int quantity}) super.argument,
  }) : super(
         retry: null,
         name: r'addToCartProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$addToCartHash();

  @override
  String toString() {
    return r'addToCartProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<CartResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CartResponse> create(Ref ref) {
    final argument = this.argument as ({String variantId, int quantity});
    return addToCart(
      ref,
      variantId: argument.variantId,
      quantity: argument.quantity,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AddToCartProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addToCartHash() => r'bbcb035b2c21da20483e6ba4cf0a958302203a37';

/// Provider to add an item to the shopping cart by [variantId] and [quantity].

final class AddToCartFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<CartResponse>,
          ({String variantId, int quantity})
        > {
  AddToCartFamily._()
    : super(
        retry: null,
        name: r'addToCartProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider to add an item to the shopping cart by [variantId] and [quantity].

  AddToCartProvider call({required String variantId, required int quantity}) =>
      AddToCartProvider._(
        argument: (variantId: variantId, quantity: quantity),
        from: this,
      );

  @override
  String toString() => r'addToCartProvider';
}
