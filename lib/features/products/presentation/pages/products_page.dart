import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/router/route_names.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/core/theme/app_text_styles.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/provider/product_provider.dart';
import 'package:meeo/features/products/presentation/weidgets/home_header.dart';
import 'package:meeo/features/products/weidgets/product_card.dart';

class ProductsPage extends ConsumerStatefulWidget {
  const ProductsPage({super.key});

  @override
  ConsumerState<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  String? _selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    final productsAsync = ref.watch(productsProvider);

    return productsAsync.when(
      data: (products) => _buildContent(products),
      loading: () => _buildLoadingState(),
      error: (error, _) => _buildErrorState(error),
    );
  }

  Widget _buildLoadingState() {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: CircularProgressIndicator(color: AppColors.primaryColor),
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 32.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.error_outline_rounded,
                  size: 48,
                  color: AppColors.errorColor,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Failed to load products',
                  style: AppTextStyles.headingSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.invalidate(productsProvider),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(List<ProductModel> allProducts) {
    /// Consider only Active Products , not Draft etc ....
    final activeProducts = allProducts
        .where((p) => p.status == ProductStatus.active)
        .toList();

    /// Extract the Categories Names
    final categories = activeProducts
        .map((p) => p.category)
        .whereType<CategoryModel>()
        .fold<Map<String, CategoryModel>>({}, (map, cat) {
          map[cat.id] = cat;
          return map;
        })
        .values
        .toList();

    /// Filter Products,eliminate nullish
    final filteredProducts = _selectedCategoryId == null
        ? activeProducts
        : activeProducts
              .where((p) => p.categoryId == _selectedCategoryId)
              .toList();

    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: RefreshIndicator(
          color: AppColors.primaryColor,
          backgroundColor: AppColors.surfaceColor,

          /// Re- featch the products
          onRefresh: () async {
            final _ = await ref.refresh(productsProvider.future);
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: <Widget>[
              // Top App Bar
              SliverAppBar(
                floating: true,
                pinned: false,
                backgroundColor: AppColors.backgroundColor,
                elevation: 0,
                title: const Text(
                  'Discover',
                  style: AppTextStyles.headingLarge,
                ),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: AppColors.textPrimary,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: AppColors.textPrimary,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              ),

              // Pinned Search and Category Filter Header
              SliverPersistentHeader(
                pinned: true,
                delegate: _PinnedHeaderDelegate(
                  height: 114.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 4.0,
                    ),
                    child: HomeHeader(
                      categories: categories,
                      selectedCategoryId: _selectedCategoryId,
                      onCategorySelected: (categoryId) {
                        setState(() {
                          _selectedCategoryId = categoryId;
                        });
                      },
                      onSearchChanged: (query) {},
                    ),
                  ),
                ),
              ),

              // 3-Column Products Grid
              if (filteredProducts.isEmpty)
                SliverToBoxAdapter(child: _buildEmptyState())
              else
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 10.0,
                  ),

                  /// grid items
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.53,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 16,
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      /// get a each Single Products
                      final product = filteredProducts[index];
                      return ProductCard(
                        title: product.name,
                        brand: product.brand?.name,
                        price: product.price,
                        originalPrice: product.originalPrice,
                        imageUrl: product.primaryImageUrl,
                        currencySymbol: '₹',
                        onTap: () {
                          context.push(
                            AppRoutes.productDetails,
                            extra: product,
                          );
                        },
                      );
                    }, childCount: filteredProducts.length),
                  ),
                ),

              // Bottom Spacing
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 48,
            color: AppColors.textTertiary,
          ),
          SizedBox(height: 12),
          Text('No Products Found', style: AppTextStyles.headingSmall),
          SizedBox(height: 6),
          Text(
            'No products available in this category.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  const _PinnedHeaderDelegate({required this.child, this.height = 114.0});

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant _PinnedHeaderDelegate oldDelegate) {
    return oldDelegate.height != height || oldDelegate.child != child;
  }
}
