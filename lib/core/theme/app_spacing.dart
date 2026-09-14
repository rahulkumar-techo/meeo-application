import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  // 2px spacing
  static const double xxs = 2.0;

  // 4px spacing
  static const double xs = 4.0;

  // 8px spacing
  static const double sm = 8.0;

  // 12px spacing
  static const double md = 12.0;

  // 16px spacing
  static const double lg = 16.0;

  // 20px spacing
  static const double xl = 20.0;

  // 24px spacing
  static const double xxl = 24.0;

  // 32px spacing
  static const double xxxl = 32.0;

  // 40px spacing
  static const double huge = 40.0;

  // 48px spacing
  static const double massive = 48.0;

  // 64px spacing
  static const double section = 64.0;

  // EdgeInsets helpers (Padding All)
  static const EdgeInsets pXxs = EdgeInsets.all(xxs);
  static const EdgeInsets pXs = EdgeInsets.all(xs);
  static const EdgeInsets pSm = EdgeInsets.all(sm);
  static const EdgeInsets pMd = EdgeInsets.all(md);
  static const EdgeInsets pLg = EdgeInsets.all(lg);
  static const EdgeInsets pXl = EdgeInsets.all(xl);
  static const EdgeInsets pXxl = EdgeInsets.all(xxl);
  static const EdgeInsets pXxxl = EdgeInsets.all(xxxl);

  // Horizontal Padding
  static const EdgeInsets pxSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets pxMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets pxLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets pxXl = EdgeInsets.symmetric(horizontal: xl);
  static const EdgeInsets pxXxl = EdgeInsets.symmetric(horizontal: xxl);

  // Vertical Padding
  static const EdgeInsets pySm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets pyMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets pyLg = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets pyXl = EdgeInsets.symmetric(vertical: xl);
  static const EdgeInsets pyXxl = EdgeInsets.symmetric(vertical: xxl);

  // Vertical Gap Helpers (SizedBox)
  static const SizedBox gapH4 = SizedBox(height: xs);
  static const SizedBox gapH8 = SizedBox(height: sm);
  static const SizedBox gapH12 = SizedBox(height: md);
  static const SizedBox gapH16 = SizedBox(height: lg);
  static const SizedBox gapH20 = SizedBox(height: xl);
  static const SizedBox gapH24 = SizedBox(height: xxl);
  static const SizedBox gapH32 = SizedBox(height: xxxl);
  static const SizedBox gapH40 = SizedBox(height: huge);
  static const SizedBox gapH48 = SizedBox(height: massive);
  static const SizedBox gapH64 = SizedBox(height: section);

  // Horizontal Gap Helpers (SizedBox)
  static const SizedBox gapW4 = SizedBox(width: xs);
  static const SizedBox gapW8 = SizedBox(width: sm);
  static const SizedBox gapW12 = SizedBox(width: md);
  static const SizedBox gapW16 = SizedBox(width: lg);
  static const SizedBox gapW20 = SizedBox(width: xl);
  static const SizedBox gapW24 = SizedBox(width: xxl);
  static const SizedBox gapW32 = SizedBox(width: xxxl);
}
