import 'package:flutter/material.dart';
import 'package:meeo/core/theme/app_colors.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String? brand;
  final String? description;
  final double price;
  final double? originalPrice;
  final double? offerPrice;
  final String? offerLabel;
  final String? imageUrl;
  final double? rating;
  final int? reviewCount;
  final int? discountPercent;
  final bool isFreeDelivery;
  final bool isFavorite;
  final bool isAd;
  final String currencySymbol;
  final double? width;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onAddToCart;

  const ProductCard({
    super.key,
    required this.title,
    this.brand,
    this.description,
    required this.price,
    this.originalPrice,
    this.offerPrice,
    this.offerLabel = 'Bank offer',
    this.imageUrl,
    this.rating = 4.5,
    this.reviewCount,
    this.discountPercent,
    this.isFreeDelivery = true,
    this.isFavorite = false,
    this.isAd = false,
    this.currencySymbol = '₹',
    this.width,
    this.onTap,
    this.onFavoriteTap,
    this.onAddToCart,
  });

  String _formatPrice(double value) {
    if (value >= 1000) {
      final intVal = value.toInt();
      final str = intVal.toString();
      // Format Indian / standard thousands (e.g. 59,900)
      final lastThree = str.substring(str.length - 3);
      final otherNumbers = str.substring(0, str.length - 3);
      if (otherNumbers.isNotEmpty) {
        final formattedOthers = otherNumbers.replaceAllMapped(
          RegExp(r'(\d+?)(?=(\d\d)+$)'),
          (m) => '${m[1]},',
        );
        return '$formattedOthers,$lastThree';
      }
      return str;
    }
    return value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    // Calculated offer price if not provided
    final effectiveOfferPrice =
        offerPrice ?? (originalPrice != null ? price * 0.95 : null);

    return Container(
      width: width,
      color: Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Large Portrait Image (Color style: ~0.8 aspect ratio)
              AspectRatio(
                aspectRatio: 0.82,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.surfaceColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.borderColor.withValues(alpha: 0.6),
                      width: 0.8,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Product Image
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: imageUrl != null && imageUrl!.trim().isNotEmpty
                              ? Image.network(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (context, child, progress) {
                                    if (progress == null) return child;
                                    return Center(
                                      child: SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          value:
                                              progress.expectedTotalBytes !=
                                                  null
                                              ? progress.cumulativeBytesLoaded /
                                                    progress.expectedTotalBytes!
                                              : null,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                    );
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    debugPrint(
                                      '❌ Image failed to load: $imageUrl | Error: $error',
                                    );
                                    return _buildPlaceholderImage();
                                  },
                                )
                              : _buildPlaceholderImage(),
                        ),
                      ),

                      // Optional AD Tag (Top Left)
                      if (isAd)
                        Positioned(
                          top: 6,
                          left: 6,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.85),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'AD',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ),

                      // Rating Pill Badge (Bottom Left) - Color style: [ 4.6 ★ ]
                      if (rating != null)
                        Positioned(
                          bottom: 6,
                          left: 6,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2.5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.12),
                                  blurRadius: 4,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  rating!.toStringAsFixed(1),
                                  style: const TextStyle(
                                    fontSize: 10.5,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF212121),
                                  ),
                                ),
                                const SizedBox(width: 2.5),
                                const Icon(
                                  Icons.star_rounded,
                                  size: 11,
                                  color: Color(0xFF26A541), // Color Green
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 5),

              // Product Title (Color single line with ellipsis)
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF212121),
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 2),

              // Primary Price & Original Strikethrough Price Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$currencySymbol${_formatPrice(price)}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                      height: 1.2,
                    ),
                  ),
                  if (originalPrice != null && originalPrice! > price) ...[
                    const SizedBox(width: 4),
                    Text(
                      _formatPrice(originalPrice!),
                      style: const TextStyle(
                        fontSize: 10.5,
                        color: Color(0xFF878787),
                        decoration: TextDecoration.lineThrough,
                        height: 1.2,
                      ),
                    ),
                  ],
                ],
              ),

              const SizedBox(height: 2),

              // Offer Price & Bank Offer Text (Color Blue: #2874F0)
              if (effectiveOfferPrice != null) ...[
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2874F0), // Color Blue
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '$currencySymbol${_formatPrice(effectiveOfferPrice)} ',
                      ),
                      const TextSpan(
                        text: 'with',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Text(
                  offerLabel ?? 'Bank offer',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2874F0),
                    height: 1.15,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage() {
    return Center(
      child: Icon(
        Icons.phone_android_rounded,
        size: 36,
        color: AppColors.textTertiary.withValues(alpha: 0.4),
      ),
    );
  }
}
