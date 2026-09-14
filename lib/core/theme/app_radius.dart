class AppRadius {
  AppRadius._();

  // No radius
  static const double none = 0.0;

  // Extra small radius
  static const double xs = 4.0;

  // Small radius
  static const double sm = 8.0;

  // Medium radius
  static const double md = 12.0;

  // Large radius
  static const double lg = 16.0;

  // Extra large radius
  static const double xl = 20.0;

  // Extra extra large radius
  static const double xxl = 24.0;

  // Card radius
  static const double card = 16.0;

  // Button radius
  static const double button = 12.0;

  // Input radius
  static const double input = 12.0;

  // Bottom sheet radius
  static const double bottomSheet = 24.0;

  // Pill radius
  static const double pill = 999.0;
}

/*
| Component      |               Radius |
| -------------- | -------------------: |
| Small badge    |           `xs` → 4px |
| Small elements |           `sm` → 8px |
| Inputs         |       `input` → 12px |
| Buttons        |      `button` → 12px |
| Product cards  |        `card` → 16px |
| Images         |          `lg` → 16px |
| Modal          |          `xl` → 20px |
| Bottom sheet   | `bottomSheet` → 24px |
| Chips / pills  |       `pill` → 999px |

*/
