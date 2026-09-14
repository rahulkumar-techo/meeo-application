import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meeo/app.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/provider/product_provider.dart';

void main() {
  testWidgets(
    'App smoke test - verifies home page loads Discover title and search box',
    (WidgetTester tester) async {
      // Build our app wrapped in ProviderScope with empty/mock products override to prevent network calls in tests.
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            productsProvider.overrideWith((ref) async => <ProductModel>[]),
          ],
          child: const MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Verify Discover Title is present
      expect(find.text('Discover'), findsOneWidget);

      // Verify Search Hint Text is present
      expect(find.text('Search products, brands...'), findsOneWidget);
    },
  );
}
