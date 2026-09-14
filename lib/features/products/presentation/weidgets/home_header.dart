import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meeo/core/router/route_names.dart';
import 'package:meeo/core/theme/app_colors.dart';
import 'package:meeo/features/products/data/models/product_model.dart';
import 'package:meeo/features/products/presentation/weidgets/bottom_sheet.dart';
import 'package:meeo/features/products/presentation/weidgets/searchbox_input.dart';

/// Pinned header widget containing the search box and horizontal category chips.
class HomeHeader extends StatefulWidget {
  final List<CategoryModel> categories;
  final String? selectedCategoryId;
  final ValueChanged<String>? onSearchChanged;
  final ValueChanged<String>? onSearchSubmitted;
  final ValueChanged<String?>? onCategorySelected;
  final TextEditingController? searchController;
  final String hintText;

  const HomeHeader({
    super.key,
    required this.categories,
    this.selectedCategoryId,
    this.onSearchChanged,
    this.onSearchSubmitted,
    this.onCategorySelected,
    this.searchController,
    this.hintText = 'Search products, brands...',
  });

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  late final TextEditingController _controller;
  bool _ownsController = false;

  @override
  void initState() {
    super.initState();
    if (widget.searchController != null) {
      _controller = widget.searchController!;
    } else {
      _controller = TextEditingController();
      _ownsController = true;
    }
  }

  @override
  void dispose() {
    if (_ownsController) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSearchField(),
        const SizedBox(height: 12),
        _buildCategoryChips(),
      ],
    );
  }

  /// Read-only search bar that opens the dedicated search page on tap.
  Widget _buildSearchField() {
    return SearchBoxInput(
      controller: _controller,
      readOnly: true,
      hintText: widget.hintText,
      onTap: () {
        context.push(AppRoutes.searchPagePath);
      },
    );
  }

  /// Horizontal scrolling list showing 'All' + up to 6-7 category items.
  Widget _buildCategoryChips() {
    if (widget.categories.isEmpty) {
      return const SizedBox.shrink();
    }

    final isAllSelected = widget.selectedCategoryId == null;

    // Limit header display to 6-7 categories.
    // If a category outside the top 7 is currently selected via the BottomSheet,
    // ensure it is included so the user sees their active selection.
    final topCategories = widget.categories.take(7).toList();
    final isSelectedInTop =
        isAllSelected ||
        topCategories.any((c) => c.id == widget.selectedCategoryId);

    final displayedCategories = isSelectedInTop
        ? topCategories
        : [
            ...widget.categories.where(
              (c) => c.id == widget.selectedCategoryId,
            ),
            ...widget.categories
                .where((c) => c.id != widget.selectedCategoryId)
                .take(6),
          ];

    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: displayedCategories.length + 1,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          // First item: "All" chip which opens the BottomSheet with all categories
          if (index == 0) {
            return _buildChip(
              label: 'All',
              isSelected: isAllSelected,
              trailingIcon: Icons.keyboard_arrow_down_rounded,
              onSelected: () {
                CategoriesBottomSheet.show(
                  context: context,
                  categories: widget.categories,
                  selectedCategoryId: widget.selectedCategoryId,
                  onCategorySelected: (catId) {
                    widget.onCategorySelected?.call(catId);
                  },
                );
              },
            );
          }

          final category = displayedCategories[index - 1];
          final isSelected = widget.selectedCategoryId == category.id;

          return _buildChip(
            label: category.name,
            isSelected: isSelected,
            onSelected: () {
              // Tapping selected category resets to 'All', otherwise selects it
              if (isSelected) {
                widget.onCategorySelected?.call(null);
              } else {
                widget.onCategorySelected?.call(category.id);
              }
            },
          );
        },
      ),
    );
  }

  /// Single selectable category chip.
  Widget _buildChip({
    required String label,
    required bool isSelected,
    required VoidCallback onSelected,
    IconData? trailingIcon,
  }) {
    return GestureDetector(
      onTap: onSelected,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.surfaceColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : AppColors.borderColor,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.primaryColor.withValues(alpha: 0.25),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isSelected && trailingIcon == null) ...[
              Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 6),
            ],
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? AppColors.white : AppColors.textSecondary,
              ),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 4),
              Icon(
                trailingIcon,
                size: 16,
                color: isSelected ? AppColors.white : AppColors.textSecondary,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
