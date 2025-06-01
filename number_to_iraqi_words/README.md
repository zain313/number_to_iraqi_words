# 🇮🇶 number_to_iraqi_words Version 0.0.1

A Dart library to convert numbers into words in the Iraqi dialect.
It supports numbers from zero to trillion, including decimal points, and provides smart linguistic processing to conjugate numbers as they are spoken in the Iraqi Arabic language.

![image](https://github.com/user-attachments/assets/907a036f-63cf-4313-a842-1d359d13ed93)


---------------

## ✨ المميزات | Features

- ✅ تحويل الارقام من 0 حتى ترليون
- ✅ دعم الاعداد العشرية (مثال: 123.45 → مية و تلاثة و عشرين فاصلة خمسة و اربعين)
- ✅ تصريف لغوي ذكي حسب العدد
- ✅ خفيفة وسهلة الاضافة الى اي مشروع Dart أو Flutter
- ✅ اختبارات جاهزة للتحقق من الدقة

---

## 🚀 الاستخدام | Usage

```dart
import 'package:number_to_iraqi_words/number_to_iraqi_words.dart';

void main() {
  print(NumberToIraqiWords.convert(123));            // مية و تلاثة و عشرين
  print(NumberToIraqiWords.convert(2000));           // الفين
  print(NumberToIraqiWords.convert(1250000));        // مليون و ميتين و خمسين الف
  print(NumberToIraqiWords.convert(3000000000));     // تلاثة مليارات
  print(NumberToIraqiWords.convert(1000000000000));  // ترليون
  print(NumberToIraqiWords.convertDouble(12.25));    // اثنعش فاصلة خمسة و عشرين
}
```

---

## 📦 التثبيت | Installation

### If you're using the package from pub.dev :

```yaml
dependencies:
  number_to_iraqi_words: ^1.0.0
```

ثم شغّل احد الاوامر التالية:

```bash
dart pub get
```

أو:

```bash
flutter pub get
```

---

### If you're using the package as a local file (e.g. from GitHub) :

```yaml
dependencies:
  number_to_iraqi_words:
    path: ./number_to_iraqi_words
```

---------------

## 🧪 اختبارات الوحدة | Unit Tests

Automated verification tests have been set up using the `package:test` library to ensure accuracy.

### To run all tests  

```bash
dart test
```

### Main test file :

```
test/number_to_iraqi_words_test.dart
```

---

## 🧑‍💻 المطور | Owner

This library was developed by :
**Zain Alabdeen Ali**  
📍 Iraq / Wasit

📧 zainz4700@gmail.com🔗

- [GitHub](https://github.com/zain313)
- [LinkedIn](https://www.linkedin.com/in/itzainali/)
- [Instagram](https://www.instagram.com/it.zain.ali/)
- [Facebook](https://www.facebook.com/zainalabdeen.ali.2)


---------------

## 📄 الرخصة | License

MIT License © 2025 Zain Alabdeen Ali  
You are free to use, modify, and distribute it, provided that proper credit is given to the original author.
