import 'package:test/expect.dart';
import 'package:test/test.dart';

void main() {
  test('Task 1: max of 3', () {
    expect(maxOf3(3, 6, 9), equals(9));
    expect(maxOf3(5.4, 9.8, -2.1212), equals(9.8));
    expect(maxOf3(3.14, 2.23, -9.2), equals(3.14));
    expect(maxOf3(3, 6, 0.9), equals(6));
    expect(maxOf3(3 + 1.2, 6 - 5.4, 9 - 8.9), equals(4.2));
  });

  test('Task 2: Sum of list', () {
    expect(sumOfList([1, 2, 3]), equals(6));
    expect(sumOfList([]), equals(0));
    expect(sumOfList([5, -4, 6, 3]), equals(10));
    expect(sumOfList([9, 3, 3, 3]), equals(18));
    expect(sumOfList([7, 0, -7, 3, 4]), equals(7));
    expect(sumOfList([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]), equals(94));
  });

    test('Task 3: Multiple of list', () {
    expect(proOfList([1, 2, 3]), equals(6));
    expect(proOfList([]), equals(null));
    expect(proOfList([5, -4, 6, 3]), equals(-360));
    expect(proOfList([9, 3, 3, 3]), equals(243));
    expect(proOfList([7, 0, -7, 3, 4]), equals(0));
    expect(proOfList([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]), equals(11757312000));
  });
}

num maxOf3(num a, num b, num c) => a > b && a > c ? a : b > c ? b : c;

num sumOfList(List<num> list) => list.isNotEmpty ? list.reduce((value, element) => value + element) : 0;

num? proOfList(List<num> list) => list.isNotEmpty ? list.reduce((value, element) => value * element) : null;