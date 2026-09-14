import 'package:flutter_test/flutter_test.dart';
import 'package:meeo/features/products/data/models/search_product_model.dart';

void main() {
  group('SearchQueryParams', () {
    test('toJson serializes non-null values correctly', () {
      final params = SearchQueryParams(
        search: 'laptop',
        limit: 20,
        page: 1,
        categoryId: 'cat-123',
      );

      final json = params.toJson();
      expect(json['search'], equals('laptop'));
      expect(json['limit'], equals(20));
      expect(json['page'], equals(1));
      expect(json['categoryId'], equals('cat-123'));
    });

    test('equality and hashCode work as expected with Freezed', () {
      final p1 = SearchQueryParams(search: 'phone', limit: 50);
      final p2 = SearchQueryParams(search: 'phone', limit: 50);
      final p3 = SearchQueryParams(search: 'tablet', limit: 50);

      expect(p1, equals(p2));
      expect(p1.hashCode, equals(p2.hashCode));
      expect(p1, isNot(equals(p3)));
    });
  });
}
