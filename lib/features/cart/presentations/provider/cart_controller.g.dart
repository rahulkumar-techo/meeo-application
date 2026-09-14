// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller managing Cart mutation operations (Update Quantity, Delete, Add).

@ProviderFor(CartController)
final cartControllerProvider = CartControllerProvider._();

/// Controller managing Cart mutation operations (Update Quantity, Delete, Add).
final class CartControllerProvider
    extends $NotifierProvider<CartController, CartOperationState> {
  /// Controller managing Cart mutation operations (Update Quantity, Delete, Add).
  CartControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartControllerHash();

  @$internal
  @override
  CartController create() => CartController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartOperationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartOperationState>(value),
    );
  }
}

String _$cartControllerHash() => r'acca614bea4e77fabffa70a2518a35a6068ddddf';

/// Controller managing Cart mutation operations (Update Quantity, Delete, Add).

abstract class _$CartController extends $Notifier<CartOperationState> {
  CartOperationState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CartOperationState, CartOperationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CartOperationState, CartOperationState>,
              CartOperationState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
