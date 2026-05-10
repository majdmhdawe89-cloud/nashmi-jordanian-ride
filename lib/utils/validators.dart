class Validators {
  /// التحقق من صحة رقم الهاتف الأردني
  /// يقبل الأرقام التي تبدأ ب 07 أو 962 أو 00962
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }

    // إزالة المسافات والأحرف غير الضرورية
    String phone = value.replaceAll(RegExp(r'\D'), '');

    // التحقق من الطول
    if (phone.length < 9 || phone.length > 12) {
      return 'رقم الهاتف يجب أن يكون بين 9 و 12 أرقام';
    }

    // التحقق من البادئة الأردنية
    if (!phone.startsWith('07') &&
        !phone.startsWith('962') &&
        !phone.startsWith('00962')) {
      return 'رقم هاتف أردني غير صحيح';
    }

    return null;
  }

  /// التحقق من صحة البريد الإلكتروني
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }

    const String emailPattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final RegExp regex = RegExp(emailPattern);

    if (!regex.hasMatch(value)) {
      return 'بريد إلكتروني غير صحيح';
    }

    return null;
  }

  /// التحقق من صحة كلمة المرور
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }

    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    }

    if (value.length > 20) {
      return 'كلمة المرور يجب أن تكون 20 حرف على الأكثر';
    }

    return null;
  }

  /// التحقق من صحة رمز التحقق (OTP)
  static String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return 'رمز التحقق مطلوب';
    }

    if (value.length != 6) {
      return 'رمز التحقق يجب أن يكون 6 أرقام';
    }

    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return 'رمز التحقق يجب أن يحتوي على أرقام فقط';
    }

    return null;
  }

  /// التحقق من صحة اسم المستخدم
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'الاسم مطلوب';
    }

    if (value.length < 2) {
      return 'الاسم يجب أن يكون حرفين على الأقل';
    }

    if (value.length > 50) {
      return 'الاسم يجب أن يكون 50 حرف على الأكثر';
    }

    // التحقق من عدم وجود أرقام
    if (RegExp(r'[0-9]').hasMatch(value)) {
      return 'الاسم لا يجب أن يحتوي على أرقام';
    }

    return null;
  }

  /// التحقق من صحة رقم البطاقة
  static String? validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم البطاقة مطلوب';
    }

    String cardNumber = value.replaceAll(RegExp(r'\D'), '');

    if (cardNumber.length < 13 || cardNumber.length > 19) {
      return 'رقم البطاقة غير صحيح';
    }

    // فحص Luhn Algorithm (اختياري)
    if (!_luhnCheck(cardNumber)) {
      return 'رقم البطاقة غير صحيح';
    }

    return null;
  }

  /// الخوارزمية المستخدمة للتحقق من أرقام البطاقات (Luhn Check)
  static bool _luhnCheck(String cardNo) {
    int sum = 0;
    int isEven = 0;

    for (int i = cardNo.length - 1; i >= 0; i--) {
      int n = int.parse(cardNo[i]);

      if (isEven == 1) {
        n = n * 2;

        if (n > 9) {
          n = n - 9;
        }
      }

      sum += n;
      isEven = 1 - isEven;
    }

    return (sum % 10 == 0);
  }

  /// التحقق من صحة تاريخ انتهاء البطاقة
  static String? validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'تاريخ الانتهاء مطلوب';
    }

    if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
      return 'الصيغة الصحيحة: MM/YY';
    }

    List<String> parts = value.split('/');
    int month = int.parse(parts[0]);
    int year = int.parse(parts[1]);

    if (month < 1 || month > 12) {
      return 'شهر غير صحيح';
    }

    int currentYear = DateTime.now().year % 100;
    if (year < currentYear) {
      return 'البطاقة منتهية الصلاحية';
    }

    return null;
  }

  /// التحقق من صحة CVV
  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'CVV مطلوب';
    }

    if (!RegExp(r'^\d{3,4}$').hasMatch(value)) {
      return 'CVV يجب أن يكون 3 أو 4 أرقام';
    }

    return null;
  }

  /// التحقق من صحة التعليق/الرسالة
  static String? validateComment(String? value, {int maxLength = 500}) {
    if (value == null || value.isEmpty) {
      return 'التعليق مطلوب';
    }

    if (value.length > maxLength) {
      return 'التعليق يجب أن يكون $maxLength حرف على الأكثر';
    }

    return null;
  }

  /// التحقق من عدم ترك الحقل فارغاً
  static String? validateRequired(String? value, {String fieldName = 'الحقل'}) {
    if (value == null || value.isEmpty) {
      return '$fieldName مطلوب';
    }

    return null;
  }

  /// التحقق من تطابق كلمات المرور
  static String? validatePasswordMatch(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'تأكيد كلمة المرور مطلوب';
    }

    if (value != password) {
      return 'كلمات المرور غير متطابقة';
    }

    return null;
  }
}
