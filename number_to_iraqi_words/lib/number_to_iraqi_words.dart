library number_to_iraqi_words;

class NumberToIraqiWords {
  static const List<String> _units = [
    "", "واحد", "اثنين", "تلاثة", "أربعة", "خمسة",
    "ستة", "سبعة", "ثمانية", "تسعة"
  ];

  static const List<String> _tens = [
    "", "عشرة", "عشرين", "تلاثين", "أربعين", "خمسين",
    "ستين", "سبعين", "ثمانين", "تسعين"
  ];

  static const List<String> _teens = [
    "عشرة", "اهدعش", "اثنعش", "تلطعش", "اربعطعش",
    "خمسطعش", "ستطعش", "سبعطعش", "ثمنطعش", "تسعطعش"
  ];

  static String _correctHundreds(int hundred) {
    return hundred == 2 ? "ميتين" : "${_units[hundred]}مية";
  }

  static String _correctThousands(int number) {
    if (number == 1) return "الف";
    if (number == 2) return "الفين";
    if (number >= 3 && number <= 10) return "${convert(number)} آلاف";
    return "${convert(number)} الف";
  }

  static String _correctMillions(int number) {
    if (number == 1) return "مليون";
    if (number == 2) return "مليونين";
    if (number >= 3 && number <= 10) return "${convert(number)} ملايين";
    return "${convert(number)} مليون";
  }

  static String _correctBillions(int number) {
    if (number == 1) return "مليار";
    if (number == 2) return "مليارين";
    if (number >= 3 && number <= 10) return "${convert(number)} مليارات";
    return "${convert(number)} مليار";
  }

  static String _correctTrillions(int number) {
    if (number == 1) return "ترليون";
    if (number == 2) return "ترليونين";
    if (number >= 3 && number <= 10) return "${convert(number)} ترليونات";
    return "${convert(number)} ترليون";
  }

  static String convert(int number) {
    if (number == 0) return "صفر";
    if (number < 10) return _units[number];
    if (number < 20) return _teens[number - 10];
    if (number < 100) {
      int ten = number ~/ 10;
      int unit = number % 10;
      return unit == 0
          ? _tens[ten]
          : "${_units[unit]} و ${_tens[ten]}";
    }

    if (number < 1000) {
      int hundred = number ~/ 100;
      int remainder = number % 100;
      String hundredStr = hundred == 1 ? "مية" : _correctHundreds(hundred);
      return remainder == 0
          ? hundredStr
          : "$hundredStr و ${convert(remainder)}";
    }

    if (number < 1000000) {
      int thousand = number ~/ 1000;
      int remainder = number % 1000;
      String thousandStr = _correctThousands(thousand);
      return remainder == 0
          ? thousandStr
          : "$thousandStr و ${convert(remainder)}";
    }

    if (number < 1000000000) {
      int million = number ~/ 1000000;
      int remainder = number % 1000000;
      String millionStr = _correctMillions(million);
      return remainder == 0
          ? millionStr
          : "$millionStr و ${convert(remainder)}";
    }

    if (number < 1000000000000) {
      int billion = number ~/ 1000000000;
      int remainder = number % 1000000000;
      String billionStr = _correctBillions(billion);
      return remainder == 0
          ? billionStr
          : "$billionStr و ${convert(remainder)}";
    }

    int trillion = number ~/ 1000000000000;
    int remainder = number % 1000000000000;
    String trillionStr = _correctTrillions(trillion);
    return remainder == 0
        ? trillionStr
        : "$trillionStr و ${convert(remainder)}";
  }

  static String convertDouble(double number) {
    int whole = number.floor();
    int decimal = ((number - whole) * 100).round();
    return decimal == 0
        ? convert(whole)
        : "${convert(whole)} فاصلة ${convert(decimal)}";
  }
}
