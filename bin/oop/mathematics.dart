// Task 13 - 14

import 'dart:math';
import 'package:test/test.dart';

class Equation {
  static List<double> solve({double a = 0.0, double b = 0.0, double c = 0.0}) {
    double d = pow(b, 2) - 4 * a * c;
    double squaredD = sqrt(d);
    double doubledA = a * 2;
    return d > 0
        ? [(-b - squaredD) / doubledA, (-b + squaredD) / doubledA]
        : d == 0
            ? [-b / doubledA]
            : [];
  }
}

class Divider {
  // НОД
  static int solveGCD(int number1, int number2) {
    int maxNumber = max(number1, number2);
    for (int i = maxNumber; i >= 1; i--) {
      if (number1 % i == 0 && number2 % i == 0) {
        return i;
      }
    }
    return 1;
  }

  // НОК
  static int solveLCM(int number1, int number2) {
    int maxNumber = max(number1, number2);
    int mult = number1 * number2;
    for (int i = maxNumber; i < mult; i++) {
      if (i % number1 == 0 && i % number2 == 0) {
        return i;
      }
    }
    return mult;
  }
}

main() {
  test("Equation solving", () {
    expect(Equation.solve(a: 1, b: -2, c: -3), equals([-1.0, 3.0]));
    expect(Equation.solve(a: -1, b: -2, c: 15), equals([3.0, -5.0]));
    expect(Equation.solve(a: 1, b: 12, c: 36), equals([-6.0]));
    expect(Equation.solve(a: 3, b: 4, c: 2), equals([]));
    expect(Equation.solve(a: 1, b: 9), equals([-9.0, 0.0]));
    expect(Equation.solve(a: 1, c: -16), equals([-4.0, 4.0]));
    expect(Equation.solve(a: 1, b: -7), equals([0.0, 7.0]));
    expect(Equation.solve(a: 5, c: 30), equals([]));
    expect(Equation.solve(a: 4, c: -9), equals([-1.5, 1.5]));
  });

  test("GCD and LCM solving", () {
    // GCD
    expect(Divider.solveGCD(12, 9), equals(3));
    expect(Divider.solveGCD(24, 18), equals(6));
    expect(Divider.solveGCD(28, 16), equals(4));
    expect(Divider.solveGCD(100, 40), equals(20));
    expect(Divider.solveGCD(72, 128), equals(8));
    expect(Divider.solveGCD(Divider.solveGCD(18, 24), 36), equals(6));
    expect(Divider.solveGCD(Divider.solveGCD(12, 24), Divider.solveGCD(36, 42)),
        equals(6));

    // LCM
    expect(Divider.solveLCM(12, 9), equals(36));
    expect(Divider.solveLCM(50, 180), equals(900));
    expect(Divider.solveLCM(Divider.solveLCM(8, 15), 33), equals(1320));
    expect(Divider.solveLCM(24, 12), equals(24));
    expect(Divider.solveLCM(36, 48), equals(144));
    expect(Divider.solveLCM(12, 16), equals(48));
    expect(Divider.solveLCM(Divider.solveLCM(96, 18), 48), equals(288));
  });
}
