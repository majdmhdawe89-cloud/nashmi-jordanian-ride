# مساهمة في مشروع نشمي

شكراً لاهتمامك بالمساهمة في مشروع **نشمي** - تطبيق النقل الذكي الأردني! 🚗

## 📋 قبل البدء

1. اقرأ [README.md](../README.md) لفهم المشروع
2. تفقد [Issues](https://github.com/majdmhdawe89-cloud/nashmi-jordanian-ride/issues) للمهام المتاحة
3. اتبع اتفاقيات الكود الموضحة أدناه

## 🔄 عملية المساهمة

### 1. Fork المشروع
```bash
git clone https://github.com/YOUR-USERNAME/nashmi-jordanian-ride.git
cd nashmi-jordanian-ride
```

### 2. إنشاء فرع جديد
```bash
git checkout -b feature/your-feature-name
# أو للإصلاحات
git checkout -b fix/bug-name
```

### 3. التطوير والاختبار
- اتبع اتفاقيات الكود
- أضف تعليقات واضحة
- اختبر الكود جيداً

### 4. الـ Commit
```bash
git commit -m "type(scope): description"
```

**أنواع الـ Commits:**
- `feat`: ميزة جديدة
- `fix`: إصلاح خطأ
- `docs`: تحديث التوثيق
- `style`: تنسيق الكود
- `refactor`: إعادة هيكلة
- `test`: إضافة اختبارات
- `chore`: مهام صيانة

**مثال:**
```
feat(auth): add OTP verification screen
```

### 5. Push والـ Pull Request
```bash
git push origin feature/your-feature-name
```

ثم أنشئ Pull Request مع وصف واضح لما تم إنجازه.

## 📝 اتفاقيات الكود

### تسمية الملفات
```
- الملفات: snake_case (مثال: user_model.dart)
- الفئات: PascalCase (مثال: UserModel)
- المتغيرات: camelCase (مثال: userName)
- الثوابت: camelCase (مثال: maxRetries)
```

### هيكل المجلدات
```
lib/
├── screens/          # الشاشات
├── models/           # نماذج البيانات
├── providers/        # حالة التطبيق
├── services/         # الخدمات
├── widgets/          # العناصر المعاد استخدامها
└── utils/            # أدوات وثوابت
```

### تنسيق الكود
- استخدم `dartfmt` للتنسيق التلقائي
- عمق البادئة: 2 مسافات
- طول السطر الأقصى: 80 حرفاً

### التعليقات
```dart
// تعليق بسيط لسطر واحد

/// تعليق توثيق للدوال والفئات
/// مثال:
/// ```dart
/// int add(int a, int b) => a + b;
/// ```
```

## 🧪 الاختبارات

قبل فتح Pull Request:

```bash
# تشغيل الاختبارات
flutter test

# فحص جودة الكود
flutter analyze

# تنسيق الكود
dartfmt -w .
```

## 📋 قائمة التحقق قبل الإرسال

- [ ] اتبعت اتفاقيات الكود
- [ ] أضفت تعليقات واضحة
- [ ] اختبرت الكود على الأجهزة المختلفة
- [ ] لا توجد تحذيرات من Analyzer
- [ ] حدّثت التوثيق إن لزم الأمر
- [ ] أضفت اختبارات للميزات الجديدة

## 🎯 مستويات الأولوية

عند اختيار المهام، استخدم هذه الأولويات:

- **Priority High** ⚡ - عاجل وضروري
- **Priority Medium** 📌 - مهم لكن ليس عاجل
- **Priority Low** 📝 - يمكن تأجيله

## 💬 التواصل

- استخدم GitHub Issues للمناقشات التقنية
- أرسل Discussions للأسئلة العامة
- تواصل مباشرة مع الم��ور: [@majdmhdawe89-cloud](https://github.com/majdmhdawe89-cloud)

## 📚 موارد مفيدة

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)

---

**شكراً لمساهمتك!** ❤️

تم إنشاؤه بـ ❤️ للأردن
