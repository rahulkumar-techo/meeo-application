import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Main brand color.
  // Use for primary buttons, active navigation, links, selected states,
  // focused controls, important actions, and primary CTAs.
  static const Color primaryColor = Color(0xFF2563EB);

  // Secondary brand color.
  // Use for secondary actions, accents, gradients, special highlights,
  // and UI elements that should complement the primary color.
  static const Color secondaryColor = Color(0xFF7C3AED);

  // Main application background.
  // Use for page/scaffold backgrounds where content sits directly on top.
  static const Color backgroundColor = Color(0xFFF8FAFC);

  // Surface color.
  // Use for cards, text fields, dialogs, bottom sheets, navigation bars,
  // product containers, and other elevated content areas.
  static const Color surfaceColor = Color(0xFFFFFFFF);

  // Error color.
  // Use for validation errors, failed operations, destructive actions,
  // error icons, error messages, and delete/remove actions.
  static const Color errorColor = Color(0xFFDC2626);

  // Success color.
  // Use for successful operations, order completion, verified states,
  // success messages, positive indicators, and available status.
  static const Color successColor = Color(0xFF16A34A);

  // Warning color.
  // Use for warnings, low stock, pending attention, caution messages,
  // and potentially risky actions.
  static const Color warningColor = Color(0xFFF59E0B);

  // Primary text color.
  // Use for headings, titles, product names, prices, important information,
  // and normal high-priority text.
  static const Color textPrimary = Color(0xFF0F172A);

  // Secondary text color.
  // Use for descriptions, subtitles, metadata, hints, timestamps,
  // supporting information, and less important text.
  static const Color textSecondary = Color(0xFF64748B);

  // Tertiary text color.
  // Use for very low-priority information, disabled hints,
  // placeholders, and subtle metadata.
  static const Color textTertiary = Color(0xFF94A3B8);

  // Border color.
  // Use for text field borders, cards, containers, chips,
  // input outlines, and subtle component separation.
  static const Color borderColor = Color(0xFFE2E8F0);

  // Divider color.
  // Use for horizontal/vertical separators between sections,
  // list items, settings rows, and grouped content.
  static const Color dividerColor = Color(0xFFE2E8F0);

  // Disabled foreground color.
  // Use for disabled buttons, disabled icons, disabled text,
  // and controls that cannot currently be interacted with.
  static const Color disabledColor = Color(0xFFCBD5E1);

  // Disabled background color.
  // Use as the background of disabled buttons, fields,
  // cards, or other unavailable controls.
  static const Color disabledBackground = Color(0xFFF1F5F9);

  // Success background color.
  // Use behind success messages, status badges, confirmation banners,
  // and positive notification containers.
  static const Color successBackground = Color(0xFFDCFCE7);

  // Error background color.
  // Use behind error messages, error banners, failed status badges,
  // and destructive-state notifications.
  static const Color errorBackground = Color(0xFFFEE2E2);

  // Warning background color.
  // Use behind warning messages, low-stock badges,
  // pending states, and caution notifications.
  static const Color warningBackground = Color(0xFFFEF3C7);

  // Informational color.
  // Use for neutral informational messages, help indicators,
  // informational icons, and system information.
  static const Color infoColor = Color(0xFF0284C7);

  // Informational background color.
  // Use behind information banners, help messages,
  // informational badges, and neutral notifications.
  static const Color infoBackground = Color(0xFFE0F2FE);

  // Pure white.
  // Use for text/icons on dark or primary-colored backgrounds,
  // white backgrounds, and elements that require maximum contrast.
  static const Color white = Color(0xFFFFFFFF);

  // Pure black.
  // Use sparingly for maximum contrast or system-level UI requirements.
  static const Color black = Color(0xFF000000);

  // Transparent color.
  // Use when an element needs no visible background or border color.
  static const Color transparent = Colors.transparent;
}
