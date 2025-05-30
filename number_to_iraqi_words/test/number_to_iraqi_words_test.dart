import 'package:test/test.dart';
import 'package:number_to_iraqi_words/number_to_iraqi_words.dart';

void main() {
  group('تحويل الارقام الصحيحة', () {
    test('تحويل 11', () {
      expect(NumberToIraqiWords.convert(11), equals('اهدعش'));
    });

    test('تحويل 123', () {
      expect(NumberToIraqiWords.convert(123), equals('مية و تلاثة و عشرين'));
    });

    test('تحويل 2000', () {
      expect(NumberToIraqiWords.convert(2000), equals('الفين'));
    });

    test('تحويل 1000000', () {
      expect(NumberToIraqiWords.convert(1000000), equals('مليون'));
    });
  });

  group('تحويل الارقام العشرية', () {
    test('تحويل 12.25', () {
      expect(NumberToIraqiWords.convertDouble(12.25), equals('اثنعش فاصلة خمسة و عشرين'));
    });

    test('تحويل 0.75', () {
      expect(NumberToIraqiWords.convertDouble(0.75), equals('صفر فاصلة خمسة و سبعين'));
    });
  });
}
