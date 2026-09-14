import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/router/route_names.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/core/theme/app_text_styles.dart';
import 'package:meeo/features/cart/presentations/provider/cart_controller.dart';
import 'package:meeo/features/cart/presentations/provider/cart_lists.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/provider/product_details_provider.dart';

class ProductDetailsPage extends ConsumerStatefulWidget {
  final ProductModel? product;
  final String? productId;

  const ProductDetailsPage({super.key, this.product, this.productId});

  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  int _currentImageIndex = 0;
  int _selectedVariantIndex = 0;
  bool _isFavorite = false;

  String get _effectiveId => widget.productId ?? widget.product?.id ?? '';

  @override
  Widget build(BuildContext context) {
    if (_effectiveId.isEmpty) {
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          title: const Text(
            'Product Details',
            style: AppTextStyles.headingMedium,
          ),
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
        ),
        body: const Center(
          child: Text('Product ID not found', style: AppTextStyles.bodyLarge),
        ),
      );
    }

    final productAsync = ref.watch(productDetailsProvider(_effectiveId));

    return switch (productAsync) {
      AsyncData(:final value) => _buildContent(value),
      AsyncError(:final error) =>
        widget.product != null
            ? _buildContent(widget.product!)
            : _buildErrorState(error),
      _ =>
        widget.product != null
            ? _buildContent(widget.product!)
            : _buildLoadingState(),
    };
  }

  /// loading
  Widget _buildLoadingState() {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.textPrimary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: CircularProgressIndicator(color: AppColors.primaryColor),
      ),
    );
  }

  /// error
  Widget _buildErrorState(Object error) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.textPrimary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                'Failed to load product details',
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
                onPressed: () =>
                    ref.invalidate(productDetailsProvider(_effectiveId)),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///  /// main Product details
  Widget _buildContent(ProductModel product) {
    final imageList = product.images.isNotEmpty
        ? product.images.map((img) => img.url).toList()
        : (product.primaryImageUrl != null
              ? [product.primaryImageUrl!]
              : <String>[]);

    final variantList = product.variants;
    final selectedVariant =
        variantList.isNotEmpty && _selectedVariantIndex < variantList.length
        ? variantList[_selectedVariantIndex]
        : null;

    final currentPrice = selectedVariant?.price != null
        ? (double.tryParse(selectedVariant!.price!) ?? product.price)
        : product.price;

    final currentOriginalPrice = selectedVariant?.compareAtPrice != null
        ? double.tryParse(selectedVariant!.compareAtPrice!)
        : product.originalPrice;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                // The updated, non-deprecated way to pre-render offscreen pixels
                scrollCacheExtent: const ScrollCacheExtent.pixels(500.0),

                // BouncingScrollPhysics feels significantly smoother and faster than default Android Clamping
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  // App Bar with Navigation and Actions
                  SliverAppBar(
                    floating: true,
                    pinned: false,
                    backgroundColor: AppColors.backgroundColor,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColors.textPrimary,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    title: Text(
                      product.brand?.name ?? 'Meeo',
                      style: AppTextStyles.headingSmall,
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          _isFavorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          color: _isFavorite
                              ? AppColors.errorColor
                              : AppColors.textPrimary,
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorite = !_isFavorite;
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.share_outlined,
                          color: AppColors.textPrimary,
                        ),
                        onPressed: () {},
                      ),
                      Consumer(
                        builder: (context, ref, _) {
                          final cartAsync = ref.watch(cartListsProvider);
                          final int totalCount = cartAsync.maybeWhen(
                            data: (res) => res.data?.totalItemsCount ?? 0,
                            orElse: () => 0,
                          );

                          return IconButton(
                            icon: Badge(
                              isLabelVisible: totalCount > 0,
                              label: Text('$totalCount'),
                              backgroundColor: AppColors.primaryColor,
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            onPressed: () {
                              context.push(AppRoutes.cart);
                            },
                          );
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),

                  // Image Carousel
                  SliverToBoxAdapter(child: _buildImageCarousel(imageList)),

                  // Product Details, Variants & Description Section
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Brand & Category Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (product.brand?.name != null)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor.withValues(
                                      alpha: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    product.brand!.name,
                                    style: const TextStyle(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              if (product.category?.name != null)
                                Text(
                                  product.category!.name,
                                  style: const TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 12,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          // Product Title
                          Text(
                            product.name,
                            style: AppTextStyles.headingMedium.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Price Row
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '₹${currentPrice.toStringAsFixed(0)}',
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              if (currentOriginalPrice != null &&
                                  currentOriginalPrice > currentPrice) ...[
                                const SizedBox(width: 8),
                                Text(
                                  '₹${currentOriginalPrice.toStringAsFixed(0)}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColors.textTertiary,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.successBackground,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    '${(((currentOriginalPrice - currentPrice) / currentOriginalPrice) * 100).round()}% OFF',
                                    style: const TextStyle(
                                      color: AppColors.successColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),

                          // Variants Section (if available)
                          if (variantList.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            const Divider(
                              color: AppColors.borderColor,
                              height: 1,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Select Variant',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: List.generate(variantList.length, (
                                index,
                              ) {
                                final variant = variantList[index];
                                final isSelected =
                                    _selectedVariantIndex == index;
                                return ChoiceChip(
                                  label: Text(
                                    variant.attributesLabel,
                                    style: TextStyle(
                                      color: isSelected
                                          ? AppColors.white
                                          : AppColors.textPrimary,
                                      fontSize: 12,
                                      fontWeight: isSelected
                                          ? FontWeight.w600
                                          : FontWeight.w500,
                                    ),
                                  ),
                                  selected: isSelected,
                                  selectedColor: AppColors.primaryColor,
                                  backgroundColor: AppColors.surfaceColor,
                                  side: BorderSide(
                                    color: isSelected
                                        ? AppColors.primaryColor
                                        : AppColors.borderColor,
                                  ),
                                  onSelected: (selected) {
                                    if (selected) {
                                      setState(() {
                                        _selectedVariantIndex = index;
                                      });
                                    }
                                  },
                                );
                              }),
                            ),
                          ],

                          // Description Section
                          if (product.description != null &&
                              product.description!.trim().isNotEmpty) ...[
                            const SizedBox(height: 16),
                            const Divider(
                              color: AppColors.borderColor,
                              height: 1,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              product.description!,
                              style: const TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),

                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                ],
              ),
            ),

            // Bottom Action Bar
            _buildBottomActionBar(currentPrice, selectedVariant, product),
          ],
        ),
      ),
    );
  }

  /// Image carousel
  Widget _buildImageCarousel(List<String> imageList) {
    if (imageList.isEmpty) {
      return Container(
        height: 350,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.surfaceColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: const Center(
          child: Icon(
            Icons.image_not_supported_outlined,
            size: 64,
            color: AppColors.textTertiary,
          ),
        ),
      );
    }

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio:
                1.0, // 1.0 for Square (Product Page), 16/9 for Home Banner
            viewportFraction: 1.0, // Full width coverage
            enlargeCenterPage: false, // Off, since it takes full width anyway
            enableInfiniteScroll: imageList.length > 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentImageIndex = index;
              });
            },
          ),
          items: imageList.map((url) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                color: AppColors.surfaceColor,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: AppColors.borderColor),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  url,
                  fit: BoxFit.contain,
                  cacheWidth: 300,
                  cacheHeight: 300,
                  width: double.infinity,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primaryColor,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(
                      Icons.broken_image_rounded,
                      size: 48,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        if (imageList.length > 1) ...[
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageList.length, (index) {
              final isSelected = _currentImageIndex == index;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: isSelected ? 18.0 : 6.0,
                height: 6.0,
                margin: const EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.borderColor,
                ),
              );
            }),
          ),
        ],
      ],
    );
  }

  /// BottomAction
  Widget _buildBottomActionBar(
    double price,
    ProductVariantModel? selectedVariant,
    ProductModel product,
  ) {
    final cartState = ref.watch(cartControllerProvider);
    final String? variantId = selectedVariant?.id ??
        (product.variants.isNotEmpty ? product.variants.first.id : null);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        border: Border(top: BorderSide(color: AppColors.borderColor)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                side: const BorderSide(color: AppColors.primaryColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: (cartState.isGlobalLoading || variantId == null)
                  ? null
                  : () async {
                      final success = await ref
                          .read(cartControllerProvider.notifier)
                          .addToCart(
                            variantId: variantId,
                            quantity: 1,
                          );
                      if (mounted && success) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Item added to cart!'),
                            action: SnackBarAction(
                              label: 'View Cart',
                              textColor: AppColors.white,
                              onPressed: () => context.push(AppRoutes.cart),
                            ),
                          ),
                        );
                      }
                    },
              child: cartState.isGlobalLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : const Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 14),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: variantId == null
                  ? null
                  : () async {
                      await ref
                          .read(cartControllerProvider.notifier)
                          .addToCart(
                            variantId: variantId,
                            quantity: 1,
                          );
                      if (mounted) {
                        context.push(AppRoutes.cart);
                      }
                    },
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
