// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productDetails)
final productDetailsProvider = ProductDetailsFamily._();

final class ProductDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductModel>,
          ProductModel,
          FutureOr<ProductModel>
        >
    with $FutureModifier<ProductModel>, $FutureProvider<ProductModel> {
  ProductDetailsProvider._({
    required ProductDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailsHash();

  @override
  String toString() {
    return r'productDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductModel> create(Ref ref) {
    final argument = this.argument as String;
    return productDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailsHash() => r'8b3d03740699611e10a3cd20a5624e5e031a1de6';

final class ProductDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductModel>, String> {
  ProductDetailsFamily._()
    : super(
        retry: null,
        name: r'productDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailsProvider call(String productId) =>
      ProductDetailsProvider._(argument: productId, from: this);

  @override
  String toString() => r'productDetailsProvider';
}
