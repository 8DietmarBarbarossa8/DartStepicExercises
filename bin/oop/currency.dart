// Task 5

import 'package:test/expect.dart';
import 'package:test/test.dart';

class CurrencyConverterBelarus {
  static const _USD_BEL = [2.54, 2.6];
  static const _EURO_BEL = [2.6, 2.67];
  static const _RUB_BEL = [3.3, 4.24];

  static double USD2BEL(double dollars) => _USD_BEL[0] * dollars;
  static double BEL2USD(double belRub) => belRub / _USD_BEL[1];
  static double EURO2BEL(double euro) => _EURO_BEL[0] * euro;
  static double BEL2EURO(double belRub) => belRub / _EURO_BEL[1];
  static double RUB2BEL(double rubels) => _RUB_BEL[0] * rubels;
  static double BEL2RUB(double belRub) => belRub / _RUB_BEL[1];
}

main() {
  test("Currency convertation", () {
    expect(CurrencyConverterBelarus.USD2BEL(10), equals(25.4));
    expect(CurrencyConverterBelarus.BEL2USD(100), equals(38.46153846153846));
    expect(CurrencyConverterBelarus.EURO2BEL(2.6), equals(6.760000000000001));
    expect(CurrencyConverterBelarus.BEL2EURO(267), equals(100));
    expect(CurrencyConverterBelarus.RUB2BEL(100), equals(330));
    expect(CurrencyConverterBelarus.BEL2RUB(60000), equals(14150.943396226414));
  });
}
