import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/core/theme/app_spacing.dart';
import 'package:meeo/features/cart/data/model/cart_model.dart';
import 'package:meeo/features/cart/presentations/provider/cart_controller.dart';
import 'package:meeo/features/cart/presentations/widgets/quantity_selector.dart';

/// Card displaying a single cart line item with variant details, price,
/// quantity controls, and delete action.
class CartCard extends ConsumerWidget {
  final CartItemModel item;

  const CartCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartControllerProvider);
    final bool isUpdating = cartState.isItemUpdating(item.id);

    final product = item.product;
    final variant = item.variant;
    final stock = item.stockInfo;

    final String title = (product?.name.isNotEmpty == true)
        ? product!.name
        : (variant?.sku?.isNotEmpty == true ? variant!.sku! : 'Item');
    final String? imageUrl = product?.thumbnail;
    final String attributesText = variant?.formattedAttributes ?? '';
    final String brandName = product?.brand?.name.isNotEmpty == true
        ? product!.brand!.name
        : (product?.category?.name.isNotEmpty == true
            ? product!.category!.name
            : '');

    final bool isAvailable = stock?.isAvailable ?? true;
    final bool isLowStock = stock?.isLowStock ?? false;
    final int availableStock = stock?.availableStock ?? 99;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Thumbnail Image
                _buildThumbnail(imageUrl),

                const SizedBox(width: AppSpacing.md),

                // Product Details & Controls
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Brand & Delete Action Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (brandName.isNotEmpty)
                            Expanded(
                              child: Text(
                                brandName.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryColor,
                                  letterSpacing: 0.8,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          else
                            const Spacer(),
                          // Delete item button
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: isUpdating
                                ? null
                                : () => _confirmDelete(context, ref),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.delete_outline_rounded,
                                size: 20,
                                color: isUpdating
                                    ? AppColors.disabledColor
                                    : AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 2),

                      // Product Title
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                          height: 1.25,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      // Variant Attributes (e.g. Color: Titanium • Material: Aluminium)
                      if (attributesText.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          attributesText,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],

                      const SizedBox(height: 8),

                      // Stock Indicator Tag
                      _buildStockBadge(
                        isAvailable: isAvailable,
                        isLowStock: isLowStock,
                        stockCount: availableStock,
                      ),

                      const SizedBox(height: 10),

                      // Pricing & Quantity Selector Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Price info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '\$${item.unitPrice.toStringAsFixed(0)}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    if (item.hasDiscount &&
                                        item.compareAtPrice != null) ...[
                                      const SizedBox(width: 6),
                                      Text(
                                        '\$${item.compareAtPrice!.toStringAsFixed(0)}',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textTertiary,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                if (item.hasDiscount) ...[
                                  Text(
                                    '${item.discountPercentage.toStringAsFixed(0)}% OFF',
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.successColor,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),

                          // Quantity Controls
                          QuantitySelector(
                            quantity: item.quantity,
                            minQuantity: 1,
                            maxQuantity: availableStock > 0 ? availableStock : null,
                            isLoading: isUpdating,
                            onIncrement: () {
                              ref
                                  .read(cartControllerProvider.notifier)
                                  .updateQuantity(
                                    cartItemId: item.id,
                                    newQuantity: item.quantity + 1,
                                  );
                            },
                            onDecrement: () {
                              if (item.quantity > 1) {
                                ref
                                    .read(cartControllerProvider.notifier)
                                    .updateQuantity(
                                      cartItemId: item.id,
                                      newQuantity: item.quantity - 1,
                                    );
                              } else {
                                _confirmDelete(context, ref);
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Loading overlay when updating
          if (isUpdating)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildThumbnail(String? imageUrl) {
    return Container(
      width: 88,
      height: 88,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: imageUrl != null && imageUrl.isNotEmpty
            ? Image.network(
                imageUrl,
                width: 88,
                height: 88,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    color: AppColors.textTertiary,
                    size: 28,
                  ),
                ),
                loadingBuilder: (_, child, progress) {
                  if (progress == null) return child;
                  return const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.textTertiary,
                  size: 28,
                ),
              ),
      ),
    );
  }

  Widget _buildStockBadge({
    required bool isAvailable,
    required bool isLowStock,
    required int stockCount,
  }) {
    if (!isAvailable) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: AppColors.errorBackground,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Text(
          'Out of Stock',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: AppColors.errorColor,
          ),
        ),
      );
    }

    if (isLowStock) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: AppColors.warningBackground,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'Only $stockCount left in stock',
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: AppColors.warningColor,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.successBackground,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text(
        'In Stock',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: AppColors.successColor,
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove from cart?'),
        content: Text(
          'Do you want to remove "${item.product?.name ?? 'this item'}" from your cart?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.errorColor,
              foregroundColor: AppColors.white,
            ),
            onPressed: () {
              Navigator.of(ctx).pop();
              ref
                  .read(cartControllerProvider.notifier)
                  .deleteCartItem(item.id);
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }
}