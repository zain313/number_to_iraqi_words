import 'package:number_to_iraqi_words/number_to_iraqi_words.dart';

void main() {
  print(NumberToIraqiWords.convert(0)); // صفر
  print(NumberToIraqiWords.convert(5)); // خمسة
  print(NumberToIraqiWords.convert(13)); // تلطعش
  print(NumberToIraqiWords.convert(25)); // خمسة و عشرين
  print(NumberToIraqiWords.convert(123)); // مية و تلاثة و عشرين
  print(NumberToIraqiWords.convert(1000)); // الف
  print(NumberToIraqiWords.convert(2000)); // الفين
  print(NumberToIraqiWords.convert(1250000)); // مليون و ميتين و خمسين الف
}
