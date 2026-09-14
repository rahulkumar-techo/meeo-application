import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/core/theme/app_text_styles.dart';
import 'package:meeo/features/products/data/models/search_product_model.dart';
import 'package:meeo/features/products/presentation/provider/recent_searches_provider.dart';
import 'package:meeo/features/products/presentation/provider/search_products_provider.dart';
import 'package:meeo/features/products/presentation/weidgets/searchLists_items.dart';
import 'package:meeo/features/products/presentation/weidgets/searchbox_input.dart';

/// Screen allowing users to search products in real-time.
///
/// Behavior:
/// - When search query is empty: displays 2-3 cached/recent searches or an initial prompt.
/// - When user types/searches: fetches and displays matching active products from the API.
class SearchProducts extends ConsumerStatefulWidget {
  const SearchProducts({super.key});

  @override
  ConsumerState<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends ConsumerState<SearchProducts> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _currentQuery = '';

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  /// Debounces the search input by 300ms to avoid excessive API requests.
  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) {
        final trimmed = query.trim();
        setState(() {
          _currentQuery = trimmed;
        });
        // Cache the non-empty search term
        if (trimmed.isNotEmpty) {
          ref.read(recentSearchesProvider.notifier).addSearch(trimmed);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Search Bar with Navigation Back Button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.textPrimary,
                      size: 20,
                    ),
                    onPressed: () => context.pop(),
                  ),
                  Expanded(
                    child: SearchBoxInput(
                      controller: _searchController,
                      autofocus: true,
                      readOnly: false,
                      hintText: 'Search products, brands...',
                      onChanged: _onSearchChanged,
                      onSubmitted: (query) {
                        final trimmed = query.trim();
                        setState(() {
                          _currentQuery = trimmed;
                        });
                        // Save to cached recent searches upon submit
                        if (trimmed.isNotEmpty) {
                          ref
                              .read(recentSearchesProvider.notifier)
                              .addSearch(trimmed);
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),

            // Content Area:
            // 1. If query is empty -> Show 2-3 Cached/Recent Searches.
            // 2. If query is not empty -> Fetch and display search results.
            Expanded(
              child: _currentQuery.isEmpty
                  ? _buildCachedSearches()
                  : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  /// Displays the 2-3 recent cached searches or an empty placeholder prompt.
  Widget _buildCachedSearches() {
    final recentSearches = ref.watch(recentSearchesProvider);

    // If no recent searches exist, display welcoming initial state
    if (recentSearches.isEmpty) {
      return _buildInitialEmptyState();
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header with "Clear All" action
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Searches',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {
                  ref.read(recentSearchesProvider.notifier).clearSearches();
                },
                child: const Text(
                  'Clear All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Render up to 3 cached search items
          ...recentSearches
              .take(3)
              .map((query) => _buildCachedSearchTile(query)),
        ],
      ),
    );
  }

  /// Interactive list tile for a single cached search term.
  Widget _buildCachedSearchTile(String query) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Populate search bar, move cursor to the end, and trigger search
            _searchController.text = query;
            _searchController.selection = TextSelection.fromPosition(
              TextPosition(offset: query.length),
            );
            setState(() {
              _currentQuery = query;
            });
            ref.read(recentSearchesProvider.notifier).addSearch(query);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.history_rounded,
                  color: AppColors.textSecondary,
                  size: 18,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    query,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Remove single item from cache
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: AppColors.textTertiary,
                    size: 16,
                  ),
                  onPressed: () {
                    ref
                        .read(recentSearchesProvider.notifier)
                        .removeSearch(query);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Fetches and displays products matching [_currentQuery].
  Widget _buildSearchResults() {
    final queryParams = SearchQueryParams(search: _currentQuery, limit: 50);
    final searchResultsAsync = ref.watch(searchProductsProvider(queryParams));

    return searchResultsAsync.when(
      data: (items) {
        // Filter only active product items
        final activeItems = items
            .where(
              (p) =>
                  p.status == 'ACTIVE' ||
                  p.status == 'active' ||
                  p.status == null,
            )
            .toList();

        if (activeItems.isEmpty) {
          return _buildNoResultsState();
        }

        return ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
          itemCount: activeItems.length,
          itemBuilder: (context, index) {
            final product = activeItems[index];
            return SearchListItem(product: product);
          },
        );
      },
      loading: () => _buildLoadingState(),
      error: (error, _) => _buildErrorState(error),
    );
  }

  /// Empty state shown when there are no recent searches yet and the query is blank.
  Widget _buildInitialEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search_rounded,
              size: 56,
              color: AppColors.textTertiary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 16),
            const Text('Search Products', style: AppTextStyles.headingSmall),
            const SizedBox(height: 8),
            const Text(
              'Type product name, category, or brand to find items.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Loading indicator while fetching search results.
  Widget _buildLoadingState() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: CircularProgressIndicator(color: AppColors.primaryColor),
      ),
    );
  }

  /// State shown when no matching products are found for the active query.
  Widget _buildNoResultsState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.search_off_rounded,
              size: 56,
              color: AppColors.textTertiary,
            ),
            const SizedBox(height: 16),
            const Text('No Products Found', style: AppTextStyles.headingSmall),
            const SizedBox(height: 8),
            Text(
              _currentQuery.isNotEmpty
                  ? 'We couldn\'t find any match for "$_currentQuery".\nTry checking the spelling or use different keywords.'
                  : 'No products are currently available.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Error state with a retry action button.
  Widget _buildErrorState(Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: AppColors.errorColor,
            ),
            const SizedBox(height: 14),
            const Text(
              'Failed to load search results',
              style: AppTextStyles.headingSmall,
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(
                  searchProductsProvider(
                    SearchQueryParams(
                      search: _currentQuery.isNotEmpty ? _currentQuery : null,
                      limit: 50,
                    ),
                  ),
                );
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
