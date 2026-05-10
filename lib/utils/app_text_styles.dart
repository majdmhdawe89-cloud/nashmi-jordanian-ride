import 'package:flutter/material.dart';

class AppTextStyles {
  // Display Styles (كبير جداً)
  static const TextStyle displayLarge = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 57,
    fontWeight: FontWeight.bold,
    height: 1.12,
    letterSpacing: 0.0,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 45,
    fontWeight: FontWeight.bold,
    height: 1.16,
    letterSpacing: 0.0,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 36,
    fontWeight: FontWeight.bold,
    height: 1.22,
    letterSpacing: 0.0,
  );

  // Headline Styles (كبير)
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.25,
    letterSpacing: 0.0,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.29,
    letterSpacing: 0.0,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: 0.0,
  );

  // Title Styles (متوسط)
  static const TextStyle titleLarge = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.27,
    letterSpacing: 0.0,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.43,
    letterSpacing: 0.1,
  );

  // Body Styles (نص عادي)
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.4,
  );

  // Label Styles (صغير)
  static const TextStyle labelLarge = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
    letterSpacing: 0.1,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.5,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.45,
    letterSpacing: 0.5,
  );

  // Custom Styles
  // أسعار الرحلات
  static const TextStyle priceStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2D5016),
  );

  // تقييمات
  static const TextStyle ratingStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFC107),
  );

  // الأخطاء
  static const TextStyle errorStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFFf44336),
  );

  // الحالات الناجحة
  static const TextStyle successStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFF4CAF50),
  );

  // التحذيرات
  static const TextStyle warningStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFFFFC107),
  );

  // معلومات
  static const TextStyle infoStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFF2196F3),
  );

  // اسم السائق
  static const TextStyle driverNameStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // رقم لوحة السيارة
  static const TextStyle plateNumberStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  // عنوان الموقع
  static const TextStyle addressStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // الوقت المتوقع للوصول (ETA)
  static const TextStyle etaStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0xFF2D5016),
  );

  // الأزرار
  static const TextStyle buttonStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  // نص الحقول
  static const TextStyle inputStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // التلميحات
  static const TextStyle hintStyle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF757575),
  );
}
