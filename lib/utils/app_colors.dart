import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryColor = Color(0xFF2D5016); // أخضر داكن
  static const Color primaryLight = Color(0xFF4A7C2C); // أخضر فاتح
  static const Color primaryDark = Color(0xFF1a2f0a); // أخضر أغمق

  // Secondary Colors
  static const Color secondaryColor = Color(0xFFFFC107); // ذهبي
  static const Color secondaryLight = Color(0xFFFFD54F); // ذهبي فاتح
  static const Color secondaryDark = Color(0xFFF57F17); // ذهبي داكن

  // Accent Colors
  static const Color accentColor = Color(0xFF00BCD4); // سماوي
  static const Color accentLight = Color(0xFF4DD0E1); // سماوي فاتح
  static const Color accentDark = Color(0xFF0097A7); // سماوي داكن

  // Status Colors
  static const Color successColor = Color(0xFF4CAF50); // أخضر نجاح
  static const Color errorColor = Color(0xFFf44336); // أحمر خطأ
  static const Color warningColor = Color(0xFFFFC107); // أصفر تحذير
  static const Color infoColor = Color(0xFF2196F3); // أزرق معلومات

  // Neutral Colors
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color greyDark = Color(0xFF424242);
  static const Color greyMedium = Color(0xFF757575);
  static const Color greyLight = Color(0xFFBDBDBD);
  static const Color greyVeryLight = Color(0xFFF5F5F5);
  static const Color greyBackground = Color(0xFFFAFAFA);

  // Divider Colors
  static const Color dividerColor = Color(0xFFE0E0E0);

  // Rating Colors
  static const Color starColor = Color(0xFFFFC107); // نجمة ذهبية
  static const Color starEmptyColor = Color(0xFFE0E0E0);

  // Map Colors
  static const Color mapPinColor = Color(0xFF2D5016);
  static const Color mapLineColor = Color(0xFF4A7C2C);
  static const Color driverMarkerColor = Color(0xFFFFC107);

  // Bottom Sheet
  static const Color bottomSheetBackground = Color(0xFFFAFAFA);

  // Shadows
  static const List<BoxShadow> defaultShadow = [
    BoxShadow(
      color: Color(0x1a000000),
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];

  // Gradients
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, primaryLight],
  );

  static const Gradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondaryColor, secondaryLight],
  );
}
