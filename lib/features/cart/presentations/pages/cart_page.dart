import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/router/route_names.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/core/theme/app_spacing.dart';
import 'package:meeo/features/cart/data/model/cart_model.dart';
import 'package:meeo/features/cart/presentations/provider/cart_controller.dart';
import 'package:meeo/features/cart/presentations/provider/cart_lists.dart';
import 'package:meeo/features/cart/presentations/widgets/cart_card.dart';

/// Shopping Cart Page featuring Delivery Address, Cart Items List,
/// Price Breakdown, and Sticky Checkout Action.
class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartListsProvider);
    final cartControllerState = ref.watch(cartControllerProvider);

    // Listen to controller errors and show snackbars
    ref.listen(cartControllerProvider, (previous, next) {
      if (next.errorMessage != null &&
          next.errorMessage != previous?.errorMessage) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.errorMessage!),
            backgroundColor: AppColors.errorColor,
          ),
        );
      }
    });

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Shopping Cart',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
        ),
        leading: Navigator.of(context).canPop()
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: AppColors.textPrimary,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
        actions: [
          cartAsync.maybeWhen(
            data: (response) {
              final items = response.data?.items ?? [];
              if (items.isEmpty) return const SizedBox.shrink();
              return IconButton(
                tooltip: 'Clear Cart',
                icon: const Icon(
                  Icons.delete_sweep_outlined,
                  color: AppColors.textSecondary,
                ),
                onPressed: () => _confirmClearCart(context, ref),
              );
            },
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: AppColors.primaryColor,
        onRefresh: () async {
          ref.invalidate(cartListsProvider);
          await ref.read(cartListsProvider.future);
        },
        child: cartAsync.when(
          data: (response) {
            final cartData = response.data;
            final items = cartData?.items ?? [];

            if (items.isEmpty) {
              return _buildEmptyCart(context);
            }

            return _buildCartContent(context, ref, cartData!, items);
          },
          loading: () => _buildLoadingState(),
          error: (error, _) => _buildErrorState(context, ref, error),
        ),
      ),
      bottomNavigationBar: cartAsync.maybeWhen(
        data: (response) {
          final cartData = response.data;
          final items = cartData?.items ?? [];
          if (items.isEmpty) return const SizedBox.shrink();

          return _buildBottomCheckoutBar(
            context,
            ref,
            cartData!,
            cartControllerState.isGlobalLoading,
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  /// Main scrollable cart body
  Widget _buildCartContent(
    BuildContext context,
    WidgetRef ref,
    CartData cartData,
    List<CartItemModel> items,
  ) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        // 1. Delivery Address Header
        _buildAddressSection(context),

        const SizedBox(height: 8),

        // 2. Section Header: Cart Items count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items (${items.length})',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                '${cartData.totalItemsCount} total qty',
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),

        // 3. Cart Items List
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CartCard(item: item);
          },
        ),

        const SizedBox(height: 16),

        // 4. Price & Billing Details Section
        _buildPriceDetails(cartData, items),
      ],
    );
  }

  /// 1. Delivery Address Card
  Widget _buildAddressSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.location_on_outlined,
              color: AppColors.primaryColor,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Deliver to Home',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  '124 Main Street, Silicon Valley, CA 94025',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Address selector coming soon')),
              );
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Change',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 3. Price Breakdown / Billing Details
  Widget _buildPriceDetails(CartData cartData, List<CartItemModel> items) {
    final summary = cartData.summary;
    final double subtotal = summary?.subtotal ??
        items.fold(0.0, (sum, i) => sum + (i.unitPrice * i.quantity));

    // Calculate total discount from compareAtPrice
    final double totalDiscount = items.fold(
      0.0,
      (sum, i) => sum + i.totalSavings,
    );

    const double shippingFee = 0.0; // Free shipping
    final double grandTotal = subtotal;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Price Details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 16),

          // Subtotal
          _buildSummaryRow(
            title: 'Price (${items.length} items)',
            value: '\$${(subtotal + totalDiscount).toStringAsFixed(0)}',
          ),
          const SizedBox(height: 10),

          // Discount / Savings
          if (totalDiscount > 0) ...[
            _buildSummaryRow(
              title: 'Discount',
              value: '-\$${totalDiscount.toStringAsFixed(0)}',
              valueColor: AppColors.successColor,
            ),
            const SizedBox(height: 10),
          ],

          // Delivery Charges
          _buildSummaryRow(
            title: 'Delivery Charges',
            value: shippingFee == 0 ? 'FREE' : '\$$shippingFee',
            valueColor: shippingFee == 0 ? AppColors.successColor : AppColors.textPrimary,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(color: AppColors.dividerColor, height: 1),
          ),

          // Total Amount
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Amount',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                '\$${grandTotal.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),

          if (totalDiscount > 0) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.successBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 16,
                    color: AppColors.successColor,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'You will save \$${totalDiscount.toStringAsFixed(0)} on this order',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.successColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSummaryRow({
    required String title,
    required String value,
    Color? valueColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.textSecondary,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: valueColor ?? AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  /// 4. Bottom Sticky Checkout Bar
  Widget _buildBottomCheckoutBar(
    BuildContext context,
    WidgetRef ref,
    CartData cartData,
    bool isLoading,
  ) {
    final double subtotal = cartData.summary?.subtotal ?? 0.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        border: Border(top: BorderSide(color: AppColors.borderColor)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Total Price info
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Payable',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '\$${subtotal.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),

            // Proceed to Buy CTA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: isLoading
                  ? null
                  : () {
                      context.push(AppRoutes.checkout);
                    },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Proceed to Buy',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 18,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Empty Cart View
  Widget _buildEmptyCart(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 72,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Your Cart is Empty',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Looks like you haven\'t added any items to your cart yet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                context.go(AppRoutes.home);
              },
              child: const Text(
                'Start Shopping',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Loading Skeleton / Indicator
  Widget _buildLoadingState() {
    return const Center(
      child: CircularProgressIndicator(color: AppColors.primaryColor),
    );
  }

  /// Error State with Retry
  Widget _buildErrorState(
    BuildContext context,
    WidgetRef ref,
    Object error,
  ) {
    return Center(
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
              'Failed to load cart',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () => ref.invalidate(cartListsProvider),
              icon: const Icon(Icons.refresh_rounded, color: AppColors.white),
              label: const Text(
                'Retry',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmClearCart(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Clear Shopping Cart?'),
        content: const Text(
          'Are you sure you want to remove all items from your cart?',
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
              ref.read(cartControllerProvider.notifier).clearAllItems();
            },
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }
}
