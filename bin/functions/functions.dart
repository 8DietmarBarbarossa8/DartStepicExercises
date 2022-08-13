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

  test('Task 2: sum of list', () {
    expect(sumOfList([1, 2, 3]), equals(6));
    expect(sumOfList([]), equals(0));
    expect(sumOfList([5, -4, 6, 3]), equals(10));
    expect(sumOfList([9, 3, 3, 3]), equals(18));
    expect(sumOfList([7, 0, -7, 3, 4]), equals(7));
    expect(sumOfList([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]), equals(94));
  });

  test('Task 3: multiple of list', () {
    expect(proOfList([1, 2, 3]), equals(6));
    expect(proOfList([]), equals(null));
    expect(proOfList([5, -4, 6, 3]), equals(-360));
    expect(proOfList([9, 3, 3, 3]), equals(243));
    expect(proOfList([7, 0, -7, 3, 4]), equals(0));
    expect(proOfList([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]),
        equals(11757312000));
  });

  test('Task 4: deleting duplicates', () {
    expect(deleteDuplicates([2, 3, 2, 4, 5, 6, 2, 9, 2, 9, 7, 8, 8]),
        equals([2, 3, 4, 5, 6, 9, 7, 8]));
    expect(deleteDuplicates(['d', 'i', 'e', 't', 'r', 'i', 'c', 'h']),
        equals(['d', 'i', 'e', 't', 'r', 'c', 'h']));
    expect(deleteDuplicates([false, false, false, true, true, true]),
        equals([false, true]));
  });

  test('Task 5: number factorial', () {
    expect(getFactorial(-25), null);
    expect(getFactorial(-1), null);
    expect(getFactorial(0), 1);
    expect(getFactorial(1), 1);
    expect(getFactorial(2), 2);
    expect(getFactorial(3), 6);
    expect(getFactorial(4), 24);
    expect(getFactorial(7), 5040);
    expect(getFactorial(10), 3628800);
  });

  test('Task 6: does element contain in list', () {
    expect(doesContain([3, 'a', true, 5.4, "fsdfds"], 'Voitenko'), false);
    expect(
        doesContain(
            [true, false, 3.14, 25, 'fds', 'a', '@', "Dietrich"], 'Dietrich'),
        true);
    expect(doesContain([3, 'a', true, 5.4, "fsdfds", 2, 3, 5.332], 1), false);
    expect(
        doesContain([3, 4, 6, 4.3, 2.3, 3.25, 1, 2, 3, 4, 5, 5], 3.25), true);
  });

  test("Task 7 printing odd numbers", () {
    List<int> numbers = [for (int i = 0; i <= 50; i++) i];
    List<int> updatedNumbers = filterOddFromList(numbers);
    for (int u in updatedNumbers) expect(u % 2 == 1, true);
  });

  test("Task 8 list inverting", () {
    expect(invertSequence([1, 4, 5]), [5, 4, 1]);
    expect(invertSequence(['d', 'i', 'c', 'k']), ['k', 'c', 'i', 'd']);
    expect(invertSequence(["I", "love", 'beer']), ['beer', "love", 'I']);
  });

  test('Task 9: average of list', () {
    expect(averageOfList([1, 2, 3]), equals(2));
    expect(averageOfList([]), equals(0));
    expect(averageOfList([5, -4, 6, 3]), equals(2.5));
    expect(averageOfList([9, 3, 3, 3]), equals(4.5));
    expect(averageOfList([7, 0, -7, 3, 4]), equals(1.4));
    expect(averageOfList([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]),
        equals(7.230769230769231));
  });

  test("Task 10: count of symbols in list", () {
    expect(countOfSymbol([1, 2, 3, 2, 2, 3, 4, 5], 2), 3);
    expect(countOfSymbol([1, 2, 3, 2, 2, 3, 4, 5], "gay"), 0);
    expect(countOfSymbol(['@', '%', '@', '^', '@', "@", "\$", "@"], '@'), 5);
    expect(
        countOfSymbol(
            [true, true, true, false, false, true, false, null, true, false],
            false),
        4);
  });

  test('Task 11: pro of list with recursion', () {
    expect(multipleWithRecursion([1, 2, 3]), equals(6));
    expect(multipleWithRecursion([5, -4, 6, 3]), equals(-360));
    expect(multipleWithRecursion([9, 3, 3, 3]), equals(243));
    expect(multipleWithRecursion([7, 0, -7, 3, 4]), equals(0));
    expect(multipleWithRecursion([5, 9, 8, 9, 7, 4, 1, 20, 8, 5, 6, 9, 3]),
        equals(11757312000));
  });

  print("Task 1g: print [10, 33]");
  for (var it in generateNumbersInRange(10, 33)) {
    print("It: $it");
  }

  print("Task 2g: print [1, 35] by step = 7");
  for (var it in generateNumbersInRange(1, 35, step: 7)) {
    print("It: $it");
  }

  print("Task 3g: print [5, 12] squared");
  for (var it in generateNumbersInRange(5, 12, squareFlag: true)) {
    print("It^2: $it");
  }

  print("Task 4g: pring [0, 1] by step = 0.1");
  for (var it in generateNumbersInRange(0, 1, step: 0.1)) {
    print("It: $it");
  }
}

num maxOf3(num a, num b, num c) => a > b && a > c
    ? a
    : b > c
        ? b
        : c;

num sumOfList(List<num> list) =>
    list.isNotEmpty ? list.reduce((value, element) => value + element) : 0;

num? proOfList(List<num> list) =>
    list.isNotEmpty ? list.reduce((value, element) => value * element) : null;

List deleteDuplicates(List list) => list.toSet().toList();

int? getFactorial(int number) => number > 1
    ? number * getFactorial(number - 1)!
    : number < 0
        ? null
        : 1;

bool doesContain(List list, dynamic element) => list.contains(element);

List<int> filterOddFromList(List<int> list) =>
    list.where((element) => element % 2 == 1).toList();

List invertSequence(List list) => list.reversed.toList();

num averageOfList(List<num> list) => list.isNotEmpty
    ? list.reduce((value, element) => value + element) / list.length
    : 0;

int countOfSymbol(List list, dynamic el) =>
    list.where((element) => element == el).length;

num multipleWithRecursion(List<num> list) => list.length > 1
    ? list[0] * multipleWithRecursion(list.sublist(1))
    : list[0];

Iterable generateNumbersInRange(num start, num end,
    {num step = 1, bool squareFlag = false}) sync* {
  for (num i = start; i <= end; i += step) {
    yield squareFlag ? i * i : i;
  }
}
