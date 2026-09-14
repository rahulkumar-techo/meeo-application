import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_letter_spacing.dart';

class AppTextStyles {
  AppTextStyles._();

  // Display large
  static const TextStyle displayLarge = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: AppLetterSpacing.extraTight,
    color: AppColors.textPrimary,
  );

  // Display medium
  static const TextStyle displayMedium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: AppLetterSpacing.extraTight,
    color: AppColors.textPrimary,
  );

  // Display small
  static const TextStyle displaySmall = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: AppLetterSpacing.tight,
    color: AppColors.textPrimary,
  );

  // Heading large
  static const TextStyle headingLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: AppLetterSpacing.tight,
    color: AppColors.textPrimary,
  );

  // Heading medium
  static const TextStyle headingMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textPrimary,
  );

  // Heading small
  static const TextStyle headingSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.35,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textPrimary,
  );

  // Body large
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textPrimary,
  );

  // Body medium
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textPrimary,
  );

  // Body small
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textSecondary,
  );

  // Label large
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: AppLetterSpacing.relaxed,
    color: AppColors.textPrimary,
  );

  // Label medium
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: AppLetterSpacing.medium,
    color: AppColors.textPrimary,
  );

  // Label small
  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: AppLetterSpacing.medium,
    color: AppColors.textSecondary,
  );

  // Button text
  static const TextStyle button = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: AppLetterSpacing.relaxed,
    color: AppColors.white,
  );

  // Caption
  static const TextStyle caption = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: AppLetterSpacing.normal,
    color: AppColors.textSecondary,
  );

  // Overline
  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: AppLetterSpacing.wide,
    color: AppColors.textSecondary,
  );
}

/*
36px  → Display Large
32px  → Display Medium
28px  → Display Small

24px  → Heading Large
20px  → Heading Medium
18px  → Heading Small

16px  → Body Large
14px  → Body Medium
12px  → Body Small

14px  → Label Large
12px  → Label Medium
11px  → Label Small

15px  → Button
11px  → Caption
10px  → Overline
*/
