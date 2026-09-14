# 🛍️ Meeo - E-Commerce Flutter Application

[![Flutter CI](https://github.com/your-username/meeo/actions/workflows/ci.yml/badge.svg)](https://github.com/your-username/meeo/actions/workflows/ci.yml)

A modern, scalable, and high-performance Flutter e-commerce application built with **Clean Architecture**, **Feature-First modular structure**, **Flutter Riverpod** (with code generation), **Dio**, and **GoRouter**.

---

## 📑 Table of Contents

- [✨ Key Features](#-key-features)
- [🚀 Tech Stack & Dependencies](#-tech-stack--dependencies)
- [🏛️ Architecture Overview](#-architecture-overview)
- [📁 Project Directory Structure](#-project-directory-structure)
- [🛠️ Getting Started](#-getting-started)
- [⚡ Code Generation](#-code-generation)
- [🧩 Core Implementation & Workflows](#-core-implementation--workflows)
  - [1. State Management with Riverpod](#1-state-management-with-riverpod)
  - [2. Networking & ApiClient](#2-networking--apiclient)
  - [3. Declarative Routing with GoRouter](#3-declarative-routing-with-gorouter)
  - [4. Category Filtering & BottomSheet Flow](#4-category-filtering--bottomsheet-flow)
  - [5. Real-Time Search & Cache Flow](#5-real-time-search--cache-flow)
  - [6. Design Tokens & Styling](#6-design-tokens--styling)
- [🤖 Continuous Integration (GitHub Actions)](#-continuous-integration-github-actions)
- [📌 Developer Guidelines & Best Practices](#-developer-guidelines--best-practices)

---

## ✨ Key Features

- 📱 **3-Column Product Grid**: Responsive, high-density product cards showing discounts, ratings, pricing, and stock status.
- 🏷️ **Dynamic Category Filtering**: Horizontal scrollable header displaying top 6–7 categories with an interactive **"All" Category BottomSheet** to filter across the entire catalog.
- 🔍 **Real-Time Product Search**:
  - 300ms debounce to optimize network calls.
  - Conditional search (only fetches remote results when query is non-empty).
  - Displays **2–3 cached recent searches** when the search field is empty, with tap-to-search and clear history actions.
- 🖼️ **Interactive Product Details**:
  - Image carousel slider with dot indicator.
  - Discount badges, original vs discounted price calculation.
  - Dynamic specifications table, brand information, and sticky bottom action bar.
- 🔄 **Pull-to-Refresh & Error Recovery**: Full integration with Riverpod's `ref.refresh()` and friendly error/empty states with retry actions.

---

## 🚀 Tech Stack & Dependencies

### Core & Framework
| Package | Version | Purpose |
| :--- | :--- | :--- |
| **Flutter SDK** | `>= 3.13.1` | Cross-platform UI toolkit |
| [`flutter_riverpod`](https://pub.dev/packages/flutter_riverpod) | `^3.4.3` | Reactive, compile-safe state management & dependency injection |
| [`riverpod_annotation`](https://pub.dev/packages/riverpod_annotation) | `^4.0.7` | Annotations for Riverpod code generation (`@riverpod`) |
| [`go_router`](https://pub.dev/packages/go_router) | `^18.0.1` | Declarative routing with parameters and page navigation |

### Networking & Serialization
| Package | Version | Purpose |
| :--- | :--- | :--- |
| [`dio`](https://pub.dev/packages/dio) | `^5.11.1` | Robust HTTP client with timeouts, base URL config, and debug logging interceptors |
| [`freezed_annotation`](https://pub.dev/packages/freezed_annotation) | `^3.1.0` | Annotations for immutable models and unions |
| [`json_annotation`](https://pub.dev/packages/json_annotation) | `^4.12.0` | Automated JSON serialization/deserialization annotations |

### UI & Media
| Package | Version | Purpose |
| :--- | :--- | :--- |
| [`carousel_slider`](https://pub.dev/packages/carousel_slider) | `^5.0.0` | Touch-enabled image slider for product gallery |
| [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) | `^1.0.8` | iOS styled icons |

### Development & Generators
| Package | Version | Purpose |
| :--- | :--- | :--- |
| [`build_runner`](https://pub.dev/packages/build_runner) | `^2.16.1` | Build system for Dart code generation |
| [`freezed`](https://pub.dev/packages/freezed) | `^4.0.1` | Code generator for `@freezed` models |
| [`json_serializable`](https://pub.dev/packages/json_serializable) | `^6.14.1` | Generator for `fromJson` / `toJson` methods |
| [`riverpod_generator`](https://pub.dev/packages/riverpod_generator) | `^4.0.9` | Generator for typed Riverpod providers |
| [`flutter_lints`](https://pub.dev/packages/flutter_lints) | `^6.0.0` | Official Flutter & Dart linter rules |
| [`flutter_launcher_icons`](https://pub.dev/packages/flutter_launcher_icons) | `^0.13.1` | App launcher icon builder |

---

## 🏛️ Architecture Overview

The app is structured using **Feature-First Clean Architecture**:

```text
┌─────────────────────────────────────────────────────────────┐
│                     Presentation Layer                      │
│   • Pages (Screens)                                         │
│   • Widgets (ProductCard, SearchListItem, BottomSheet)      │
│   • Providers / Notifiers (State & Async Notifiers)         │
└──────────────────────────────┬──────────────────────────────┘
                               │ watches / reads
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                         Data Layer                          │
│   • Datasources (ProductsDatasource via ApiClient)          │
│   • Models (ProductModel, CategoryModel via Freezed)        │
└──────────────────────────────┬──────────────────────────────┘
                               │ HTTP Requests
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                    Network & Core Services                  │
│   • ApiClient (Dio instance, Interceptors, Base URL)        │
│   • Theme & Design Tokens (AppColors, AppTextStyles)        │
│   • GoRouter Configuration (appRouter)                      │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 Project Directory Structure

```text
lib/
├── app.dart                                 # Root MaterialApp.router configuring Theme & GoRouter
├── main.dart                                # Application entry point (wrapped in ProviderScope)
├── core/                                    # Shared cross-cutting modules
│   ├── config/                              # AppConfig & Environment configurations
│   ├── constants/                           # AppConstants, StorageKeys
│   ├── errors/                              # Exception & Failure classes
│   ├── network/                             # HTTP Client & Dio setup
│   │   └── api_client.dart                  # Singleton/Customizable Dio client with logging
│   ├── router/                              # Declarative routing setup
│   │   ├── app_router.dart                  # GoRouter configuration & routes
│   │   └── route_names.dart                 # Centralized route paths & names
│   ├── theme/                               # Design system tokens
│   │   ├── app_colors.dart                  # Color palette constants
│   │   ├── app_text_styles.dart             # Typography definitions
│   │   └── app_theme.dart                   # ThemeData configuration
│   └── widgets/                             # Core reusable UI widgets
├── features/                                # Feature modules
│   └── products/                            # Products catalog & details feature
│       ├── data/
│       │   ├── datasoource/
│       │   │   └── products_datasource.dart # Endpoints & remote data access
│       │   └── models/
│       │       ├── product_model.dart       # Freezed product, brand & category models
│       │       └── search_product_model.dart# Freezed search request & response models
│       └── presentation/
│           ├── pages/
│           │   ├── products_page.dart       # Main product catalog & 3-column grid
│           │   ├── product_details.dart     # Product detail screen with image slider
│           │   └── search_products.dart     # Real-time search & cached search screen
│           ├── provider/
│           │   ├── product_provider.dart    # Riverpod provider for catalog products
│           │   ├── product_details_provider.dart # Product detail by ID provider
│           │   ├── search_products_provider.dart # Query-based product search provider
│           │   └── recent_searches_provider.dart # Notifier storing 2-3 cached searches
│           └── weidgets/
│               ├── bottom_sheet.dart        # CategoriesBottomSheet modal
│               ├── home_header.dart         # Pinned search bar & 6-7 category chips
│               ├── product_card.dart        # 3-column product card
│               ├── searchLists_items.dart   # Search result item tile
│               └── searchbox_input.dart     # Custom search input with clear button
```

---

## 🛠️ Getting Started

### 1. Prerequisites
- **Flutter SDK**: `>= 3.13.1` ([Install Flutter](https://docs.flutter.dev/get-started/install))
- **Dart SDK**: `>= 3.1.0`
- IDE: **VS Code** or **Android Studio** with the Dart & Flutter extensions

### 2. Installation
```bash
# Clone the repository
git clone https://github.com/your-username/meeo.git

# Navigate into the project directory
cd meeo

# Install dependencies
flutter pub get
```

### 3. Run Code Generator
Generate `.g.dart` and `.freezed.dart` files:
```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. Run the Application
```bash
# Run on connected emulator or device
flutter run
```

---

## ⚡ Code Generation

When adding or modifying `@freezed`, `@JsonSerializable()`, or `@riverpod` annotations, run `build_runner`:

```bash
# One-off generation
dart run build_runner build --delete-conflicting-outputs

# Watch mode for continuous generation during development
dart run build_runner watch --delete-conflicting-outputs
```

---

## 🧩 Core Implementation & Workflows

### 1. State Management with Riverpod

Providers use code-generation via `riverpod_annotation`:

```dart
// Fetching all products
@riverpod
Future<List<ProductModel>> products(Ref ref) async {
  final response = await ApiClient().get(ProductsDatasource.getAllProducts);
  // Parses response map/list to List<ProductModel>
  return parseProducts(response.data);
}
```

Consuming providers inside widgets with `ConsumerStatefulWidget` or `ConsumerWidget`:

```dart
final productsAsync = ref.watch(productsProvider);

return productsAsync.when(
  data: (products) => ProductsGrid(products: products),
  loading: () => const Center(child: CircularProgressIndicator()),
  error: (err, stack) => ErrorView(error: err, onRetry: () => ref.invalidate(productsProvider)),
);
```

---

### 2. Networking & ApiClient

`ApiClient` wraps `Dio` to configure standard timeouts, JSON headers, and debug logging:

- **Base URL**: `https://meeo-server.onrender.com/api/v1`
- **Timeouts**: 15s connect timeout, 30s receive timeout.
- **Logging**: Automatically active in `kDebugMode` via `LogInterceptor`.

```dart
final response = await ApiClient().get(
  ProductsDatasource.getAllProducts,
  queryParameters: {'search': 'phone', 'limit': 20},
);
```

---

### 3. Declarative Routing with GoRouter

Navigation is declared in [app_router.dart](file:///e:/e-com/meeo/lib/core/router/app_router.dart):

```dart
// Navigating to Search Page
context.push(AppRoutes.searchPagePath);

// Navigating to Product Details Page (Passing ProductModel or productId)
context.push(AppRoutes.productDetails, extra: product);
```

---

### 4. Category Filtering & BottomSheet Flow

1. **Header Limitation**: `HomeHeader` displays only the top **6–7 category chips** horizontally.
2. **All Categories BottomSheet**: The first chip (`All ▾`) triggers `CategoriesBottomSheet.show()`.
3. **Dynamic Header Sync**: If the user selects a category from the modal that is outside the top 7, it is automatically injected into the visible header so the active selection is always visible.

```dart
// Opening the Category BottomSheet
CategoriesBottomSheet.show(
  context: context,
  categories: categories,
  selectedCategoryId: _selectedCategoryId,
  onCategorySelected: (catId) {
    setState(() => _selectedCategoryId = catId);
  },
);
```

---

### 5. Real-Time Search & Cache Flow

Located in [search_products.dart](file:///e:/e-com/meeo/lib/features/products/presentation/pages/search_products.dart):

```
┌────────────────────────────────────────────────────────┐
│                      Search Input                      │
└───────────────────────────┬────────────────────────────┘
                            │
               ┌────────────┴────────────┐
       Query is EMPTY?            Query is NON-EMPTY?
               │                                 │
               ▼                                 ▼
   Display 2-3 Cached Searches          Debounce 300ms
   • Tap item -> fill & search          • Fetch searchProductsProvider
   • Remove individual item (x)         • Filter ACTIVE products
   • Clear All history                  • Render SearchListItem tiles
```

The cached searches are managed reactively by `recentSearchesProvider` (storing up to 3 LIFO queries).

---

### 6. Design Tokens & Styling

Always use the tokens defined in `lib/core/theme/`:

- **Colors**: `AppColors.primaryColor`, `AppColors.surfaceColor`, `AppColors.backgroundColor`, `AppColors.textPrimary`, `AppColors.borderColor`
- **Text Styles**: `AppTextStyles.headingLarge`, `AppTextStyles.headingMedium`, `AppTextStyles.headingSmall`, `AppTextStyles.bodyMedium`, `AppTextStyles.priceLarge`

---

## 🤖 Continuous Integration (GitHub Actions)

This repository is equipped with an automated CI workflow configured in [.github/workflows/ci.yml](file:///e:/e-com/meeo/.github/workflows/ci.yml).

The pipeline automatically runs on every push and pull request to `main`, `master`, and `develop` branches:

```text
┌────────────────────────────────────────────────────────┐
│                   GitHub Actions CI                    │
├────────────────────────────────────────────────────────┤
│ 1. 📥 Checkout repository                              │
│ 2. ☕ Set up Java 17 & Flutter (stable channel)        │
│ 3. 📦 flutter pub get (with dependency caching)        │
│ 4. ⚡ dart run build_runner build (code generation)    │
│ 5. 🔍 dart format verification                         │
│ 6. 🧐 flutter analyze (0 lint warnings or errors)      │
│ 7. 🧪 flutter test --coverage (unit & widget tests)    │
│ 8. 🏗️ flutter build apk --debug (smoke build test)     │
└────────────────────────────────────────────────────────┘
```

---

## 📌 Developer Guidelines & Best Practices

1. **Feature Separation**:
   - Keep new UI screens under `lib/features/<feature_name>/presentation/pages/`.
   - Keep feature widgets under `lib/features/<feature_name>/presentation/weidgets/`.
   - Keep state logic in Riverpod providers under `lib/features/<feature_name>/presentation/provider/`.

2. **No Hardcoded Styles**:
   - Use `AppColors` and `AppTextStyles`. Never hardcode `Color(0xFF...)` in widget trees.

3. **Safe Subsetting**:
   - Always use `.take(N).toList()` rather than `.sublist(0, N)` on lists to avoid `RangeError` on smaller datasets.

4. **Code Quality Checks**:
   - Ensure `flutter analyze` passes with 0 issues before committing:
     ```bash
     flutter analyze
     ```
