// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchProducts)
final searchProductsProvider = SearchProductsFamily._();

final class SearchProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProductItem>>,
          List<ProductItem>,
          FutureOr<List<ProductItem>>
        >
    with
        $FutureModifier<List<ProductItem>>,
        $FutureProvider<List<ProductItem>> {
  SearchProductsProvider._({
    required SearchProductsFamily super.from,
    required SearchQueryParams super.argument,
  }) : super(
         retry: null,
         name: r'searchProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchProductsHash();

  @override
  String toString() {
    return r'searchProductsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ProductItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProductItem>> create(Ref ref) {
    final argument = this.argument as SearchQueryParams;
    return searchProducts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchProductsHash() => r'9909e40831323093cf849f2fc7d8f29a61333682';

final class SearchProductsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<ProductItem>>,
          SearchQueryParams
        > {
  SearchProductsFamily._()
    : super(
        retry: null,
        name: r'searchProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchProductsProvider call(SearchQueryParams query) =>
      SearchProductsProvider._(argument: query, from: this);

  @override
  String toString() => r'searchProductsProvider';
}
