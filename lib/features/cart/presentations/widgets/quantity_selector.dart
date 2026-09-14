import 'package:flutter/material.dart';
import 'package:meeo/core/theme/app_colors.dart';

/// Reusable quantity selector with increment, decrement, and disabled/loading states.
class QuantitySelector extends StatelessWidget {
  final int quantity;
  final int minQuantity;
  final int? maxQuantity;
  final bool isLoading;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const QuantitySelector({
    super.key,
    required this.quantity,
    this.minQuantity = 1,
    this.maxQuantity,
    this.isLoading = false,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    final bool canDecrement = !isLoading && quantity > minQuantity;
    final bool canIncrement =
        !isLoading && (maxQuantity == null || quantity < maxQuantity!);

    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Decrement button
          _buildActionButton(
            icon: Icons.remove_rounded,
            isEnabled: canDecrement,
            onTap: onDecrement,
          ),

          // Quantity Display / Loading Indicator
          Container(
            constraints: const BoxConstraints(minWidth: 36),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: isLoading
                ? const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.primaryColor,
                    ),
                  )
                : Text(
                    '$quantity',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
          ),

          // Increment button
          _buildActionButton(
            icon: Icons.add_rounded,
            isEnabled: canIncrement,
            onTap: onIncrement,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required bool isEnabled,
    required VoidCallback? onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: isEnabled ? onTap : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Icon(
            icon,
            size: 16,
            color: isEnabled
                ? AppColors.textPrimary
                : AppColors.disabledColor,
          ),
        ),
      ),
    );
  }
}
