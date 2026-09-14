import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/weidgets/bottom_sheet.dart';

void main() {
  group('CategoriesBottomSheet', () {
    const mockCategories = [
      CategoryModel(id: 'cat-1', name: 'Electronics'),
      CategoryModel(id: 'cat-2', name: 'Clothing'),
      CategoryModel(id: 'cat-3', name: 'Books'),
    ];

    testWidgets('renders all categories and header count correctly', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoriesBottomSheet(
              categories: mockCategories,
              selectedCategoryId: null,
              onCategorySelected: (_) {},
            ),
          ),
        ),
      );

      // Verify Title and Category Count
      expect(find.text('All Categories'), findsOneWidget);
      expect(find.text('3'), findsOneWidget);

      // Verify "All Products" tile
      expect(find.text('All Products'), findsOneWidget);

      // Verify All Category names are present
      expect(find.text('Electronics'), findsOneWidget);
      expect(find.text('Clothing'), findsOneWidget);
      expect(find.text('Books'), findsOneWidget);
    });

    testWidgets('calls onCategorySelected with category id when clicked', (
      tester,
    ) async {
      String? selectedId;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoriesBottomSheet(
              categories: mockCategories,
              selectedCategoryId: null,
              onCategorySelected: (id) {
                selectedId = id;
              },
            ),
          ),
        ),
      );

      // Tap 'Clothing' category
      await tester.tap(find.text('Clothing'));
      await tester.pumpAndSettle();

      expect(selectedId, equals('cat-2'));
    });

    testWidgets(
      'calls onCategorySelected with null when All Products clicked',
      (tester) async {
        String? selectedId = 'cat-1';

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CategoriesBottomSheet(
                categories: mockCategories,
                selectedCategoryId: 'cat-1',
                onCategorySelected: (id) {
                  selectedId = id;
                },
              ),
            ),
          ),
        );

        // Tap 'All Products' tile
        await tester.tap(find.text('All Products'));
        await tester.pumpAndSettle();

        expect(selectedId, isNull);
      },
    );
  });
}
