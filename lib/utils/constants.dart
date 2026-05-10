// App Constants
class AppConstants {
  // API Configuration
  static const String apiBaseUrl = 'https://api.nashmi.app/v1';
  static const String socketUrl = 'https://socket.nashmi.app';
  static const Duration apiTimeout = Duration(seconds: 30);

  // OTP Configuration
  static const int otpLength = 6;
  static const int otpResendDelay = 60; // seconds
  static const int maxOtpAttempts = 3;

  // Ride Pricing
  static const double baseFare = 1.5; // JD
  static const double perKmRate = 0.5; // JD per km
  static const double waitingChargePerMin = 0.1; // JD per minute

  // Rating
  static const int minRating = 1;
  static const int maxRating = 5;

  // Location
  static const double mapDefaultZoom = 15.0;
  static const double searchRadiusKm = 10.0;

  // Messages
  static const String errorGeneral = 'حدث خطأ غير متوقع. يرجى المحاولة لاحقاً';
  static const String errorNetwork = 'فشل الاتصال بالإنترنت';
  static const String errorTimeout = 'انتهت مهلة ��نتظار الاتصال';
  static const String errorInvalid = 'بيانات غير صحيحة';
  static const String errorNotFound = 'لم يتم العثور على البيانات المطلوبة';

  static const String successLogin = 'تم تسجيل الدخول بنجاح';
  static const String successLogout = 'تم تسجيل الخروج بنجاح';
  static const String successBooking = 'تم حجز الرحلة بنجاح';
  static const String successRating = 'تم حفظ التقييم بنجاح';

  // Strings
  static const String appName = 'نشمي';
  static const String appNameEn = 'Nashmi';
  static const String appVersion = '1.0.0';

  // Default Values
  static const int defaultDebounceMs = 500;
  static const int defaultAnimationDurationMs = 300;
  static const int maxRetries = 3;
}

// User Types
enum UserType {
  passenger,
  driver,
  admin,
}

extension UserTypeExtension on UserType {
  String get displayName {
    switch (this) {
      case UserType.passenger:
        return 'راكب';
      case UserType.driver:
        return 'سائق';
      case UserType.admin:
        return 'مسؤول';
    }
  }

  String get value {
    switch (this) {
      case UserType.passenger:
        return 'passenger';
      case UserType.driver:
        return 'driver';
      case UserType.admin:
        return 'admin';
    }
  }

  static UserType fromString(String value) {
    switch (value) {
      case 'passenger':
        return UserType.passenger;
      case 'driver':
        return UserType.driver;
      case 'admin':
        return UserType.admin;
      default:
        return UserType.passenger;
    }
  }
}

// Trip Status
enum TripStatus {
  pending,
  accepted,
  arriving,
  ongoing,
  completed,
  cancelled,
}

extension TripStatusExtension on TripStatus {
  String get displayName {
    switch (this) {
      case TripStatus.pending:
        return 'في الانتظار';
      case TripStatus.accepted:
        return 'تم القبول';
      case TripStatus.arriving:
        return 'السائق قادم';
      case TripStatus.ongoing:
        return 'جاري الآن';
      case TripStatus.completed:
        return 'مكتملة';
      case TripStatus.cancelled:
        return 'ملغاة';
    }
  }

  String get value {
    switch (this) {
      case TripStatus.pending:
        return 'pending';
      case TripStatus.accepted:
        return 'accepted';
      case TripStatus.arriving:
        return 'arriving';
      case TripStatus.ongoing:
        return 'ongoing';
      case TripStatus.completed:
        return 'completed';
      case TripStatus.cancelled:
        return 'cancelled';
    }
  }

  static TripStatus fromString(String value) {
    switch (value) {
      case 'pending':
        return TripStatus.pending;
      case 'accepted':
        return TripStatus.accepted;
      case 'arriving':
        return TripStatus.arriving;
      case 'ongoing':
        return TripStatus.ongoing;
      case 'completed':
        return TripStatus.completed;
      case 'cancelled':
        return TripStatus.cancelled;
      default:
        return TripStatus.pending;
    }
  }
}

// Ride Type
enum RideType {
  economy,
  comfort,
  premium,
}

extension RideTypeExtension on RideType {
  String get displayName {
    switch (this) {
      case RideType.economy:
        return 'اقتصادي';
      case RideType.comfort:
        return 'مريح';
      case RideType.premium:
        return 'فاخر';
    }
  }

  String get value {
    switch (this) {
      case RideType.economy:
        return 'economy';
      case RideType.comfort:
        return 'comfort';
      case RideType.premium:
        return 'premium';
    }
  }

  double get priceMultiplier {
    switch (this) {
      case RideType.economy:
        return 1.0;
      case RideType.comfort:
        return 1.25;
      case RideType.premium:
        return 1.5;
    }
  }

  static RideType fromString(String value) {
    switch (value) {
      case 'economy':
        return RideType.economy;
      case 'comfort':
        return RideType.comfort;
      case 'premium':
        return RideType.premium;
      default:
        return RideType.economy;
    }
  }
}

// Payment Method
enum PaymentMethod {
  cash,
  card,
  wallet,
  efawateer,
}

extension PaymentMethodExtension on PaymentMethod {
  String get displayName {
    switch (this) {
      case PaymentMethod.cash:
        return 'كاش';
      case PaymentMethod.card:
        return 'بطاقة';
      case PaymentMethod.wallet:
        return 'محفظة نشمي';
      case PaymentMethod.efawateer:
        return 'eFawateer';
    }
  }

  String get value {
    switch (this) {
      case PaymentMethod.cash:
        return 'cash';
      case PaymentMethod.card:
        return 'card';
      case PaymentMethod.wallet:
        return 'wallet';
      case PaymentMethod.efawateer:
        return 'efawateer';
    }
  }

  static PaymentMethod fromString(String value) {
    switch (value) {
      case 'cash':
        return PaymentMethod.cash;
      case 'card':
        return PaymentMethod.card;
      case 'wallet':
        return PaymentMethod.wallet;
      case 'efawateer':
        return PaymentMethod.efawateer;
      default:
        return PaymentMethod.cash;
    }
  }
}

// Document Type
enum DocumentType {
  passport,
  nationalId,
  drivingLicense,
}

extension DocumentTypeExtension on DocumentType {
  String get displayName {
    switch (this) {
      case DocumentType.passport:
        return 'جواز سفر';
      case DocumentType.nationalId:
        return 'الهوية الوطنية';
      case DocumentType.drivingLicense:
        return 'رخصة القيادة';
    }
  }
}
