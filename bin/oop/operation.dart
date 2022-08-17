// Task 8

import 'package:test/expect.dart';
import 'package:test/test.dart';

class Pair {
  double first, second;

  Pair(this.first, this.second);

  void clear() {
    first = 0;
    second = 0;
  }

  void operator +(Pair pair) {
    first += pair.first;
    second += pair.second;
  }

  void operator -(Pair pair) {
    first -= pair.first;
    second -= pair.second;
  }

  void operator *(Pair pair) {
    first *= pair.first;
    second *= pair.second;
  }

  void operator /(Pair pair) {
    if (pair.first == 0 || pair.second == 0) {
      return;
    }

    first /= pair.first;
    second /= pair.second;
  }

  void operator %(Pair pair) {
    if (pair.first == 0 || pair.second == 0) {
      return;
    }

    first %= pair.first;
    second %= pair.second;
  }
}

void main(List<String> args) {
  test("Operation overload", () {
    Pair pair = Pair(2.3, 4.5);

    pair + Pair(1.2, 0.4);
    expect(pair.first, equals(3.5));
    expect(pair.second, equals(4.9));

    pair - Pair(3, 5);
    expect(pair.first, equals(0.5));
    expect(pair.second, equals(-0.09999999999999964));

    pair * Pair(20, 30);
    expect(pair.first, equals(10));
    expect(pair.second, equals(-2.9999999999999893));

    pair / Pair(5, -3);
    expect(pair.first, equals(2));
    expect(pair.second, equals(0.9999999999999964));

    pair % Pair(0.11, 0.9);
    expect(pair.first, equals(0.01999999999999999));
    expect(pair.second, equals(0.09999999999999643));

    pair.clear();
    pair + Pair(15, 24);

    pair % Pair(2, 7);
    expect(pair.first, equals(1));
    expect(pair.second, equals(3));
  });
}
