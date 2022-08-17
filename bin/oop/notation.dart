// Task 11

import 'dart:math';
import 'package:test/test.dart';

class Notation {
  static const Map _d2l = {
    10: 'A',
    11: 'B',
    12: 'C',
    13: 'D',
    14: 'E',
    15: 'F'
  };

  static const Map _l2d = {
    'A': 10,
    'B': 11,
    'C': 12,
    'D': 13,
    'E': 14,
    'F': 15
  };

  // 8 -> 10
  static String oct2dec(String number) => _increase(number, 8);

  // 10 -> 16
  static String dec2hex(String number) {
    try {
      int num = int.parse(number);
      String result = "";

      while (num > 15) {
        int res = num % 16;
        result += res < 10 ? res.toString() : _d2l[res];
        num = num ~/ 16;
      }

      result += num < 10 ? num.toString() : _d2l[num];
      return result.split('').reversed.join();
    } catch (e) {
      return "Incorrect format!";
    }
  }

  // 8 -> 10 -> 16
  static String oct2hex(String number) => dec2hex(oct2dec(number));

  // 16 -> 10
  static String hex2dec(String number) {
    try {
      List list = number.split('');
      int sum = 0;
      for (int i = 0; i < list.length; i++) {
        int digit;
        try {
          digit = int.parse(list[i]);
        } catch (e) {
          digit = _l2d[list[i]];
        }

        sum += digit * pow(16, list.length - 1 - i).toInt();
      }
      return sum.toString();
    } catch (e) {
      return "Incorrect format!";
    }
  }

  // 10 -> 8
  static String dec2oct(String number) => _decrease(number, 8);

  // 16 -> 10 -> 8
  static String hex2oct(String number) => dec2oct(hex2dec(number));

  // 10 -> 2
  static String dec2bin(String number) => _decrease(number, 2);

  // 2 -> 10
  static String bin2dec(String number) => _increase(number, 2);

  // tools functions

  static String _increase(String number, int radix) {
    try {
      List list = number.split('');
      int sum = 0;
      for (int i = 0; i < list.length; i++) {
        sum += int.parse(list[i]) * pow(radix, list.length - 1 - i).toInt();
      }
      return sum.toString();
    } catch (e) {
      return "Incorrect format!";
    }
  }

  static String _decrease(String number, int radix) {
    try {
      int num = int.parse(number);
      String result = "";

      while (num > radix - 1) {
        result += (num % radix).toString();
        num = num ~/ radix;
      }

      result += num.toString();
      return result.split('').reversed.join();
    } catch (e) {
      return "Incorrect format!";
    }
  }
}

main() {
  test("Number notation", () {
    // 8 -> 10
    expect(Notation.oct2dec("1216"), equals('654'));
    expect(Notation.oct2dec("23456"), equals('10030'));
    expect(Notation.oct2dec("64"), equals('52'));
    expect(Notation.oct2dec("512"), equals('330'));

    // 10 -> 16
    expect(Notation.dec2hex("98"), equals('62'));
    expect(Notation.dec2hex("251"), equals('FB'));
    expect(Notation.dec2hex("16"), equals('10'));
    expect(Notation.dec2hex("138"), equals('8A'));

    // 8 -> 16
    expect(Notation.oct2hex('125'), equals('55'));
    expect(Notation.oct2hex('1216'), equals('28E'));
    expect(Notation.oct2hex('10030'), equals('1018'));
    expect(Notation.oct2hex('76'), equals('3E'));

    // 16 -> 10
    expect(Notation.hex2dec('62'), '98');
    expect(Notation.hex2dec('FB'), '251');
    expect(Notation.hex2dec('10'), '16');
    expect(Notation.hex2dec('8A'), '138');

    // 10 -> 8
    expect(Notation.dec2oct('98'), '142');
    expect(Notation.dec2oct('251'), '373');
    expect(Notation.dec2oct('16'), '20');
    expect(Notation.dec2oct('138'), '212');

    // 16 -> 8
    expect(Notation.hex2oct('62'), '142');
    expect(Notation.hex2oct('FB'), '373');
    expect(Notation.hex2oct('10'), '20');
    expect(Notation.hex2oct('8A'), '212');

    // 10 -> 2
    expect(Notation.dec2bin('98'), '1100010');
    expect(Notation.dec2bin('251'), '11111011');
    expect(Notation.dec2bin('16'), '10000');
    expect(Notation.dec2bin('138'), '10001010');

    // 2 -> 10
    expect(Notation.bin2dec('1100010'), '98');
    expect(Notation.bin2dec('11111011'), '251');
    expect(Notation.bin2dec('10000'), '16');
    expect(Notation.bin2dec('10001010'), '138');
  });
}
