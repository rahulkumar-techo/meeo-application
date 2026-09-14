import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meeo/features/products/presentation/provider/recent_searches_provider.dart';

void main() {
  group('RecentSearchesNotifier', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('initial state should be an empty list', () {
      final searches = container.read(recentSearchesProvider);
      expect(searches, isEmpty);
    });

    test('addSearch adds unique searches in LIFO order', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('shoes');
      notifier.addSearch('shirts');

      expect(
        container.read(recentSearchesProvider),
        equals(['shirts', 'shoes']),
      );
    });

    test('addSearch deduplicates case-insensitively and moves to front', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('shoes');
      notifier.addSearch('watches');
      notifier.addSearch('SHOES');

      expect(
        container.read(recentSearchesProvider),
        equals(['SHOES', 'watches']),
      );
    });

    test('addSearch caps cached searches at maximum of 3 items', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('item 1');
      notifier.addSearch('item 2');
      notifier.addSearch('item 3');
      notifier.addSearch('item 4');

      final searches = container.read(recentSearchesProvider);
      expect(searches.length, equals(3));
      expect(searches, equals(['item 4', 'item 3', 'item 2']));
    });

    test('addSearch ignores blank/whitespace strings', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('   ');
      notifier.addSearch('');

      expect(container.read(recentSearchesProvider), isEmpty);
    });

    test('removeSearch removes matching query', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('shoes');
      notifier.addSearch('hats');
      notifier.removeSearch('shoes');

      expect(container.read(recentSearchesProvider), equals(['hats']));
    });

    test('clearSearches empties the list', () {
      final notifier = container.read(recentSearchesProvider.notifier);

      notifier.addSearch('shoes');
      notifier.addSearch('hats');
      notifier.clearSearches();

      expect(container.read(recentSearchesProvider), isEmpty);
    });
  });
}
