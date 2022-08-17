/*
1) Напишите класс, проверяющий наличие определенного слова в строке. 
Если заданное слово не входит в строку – выбрасывается исключение.
2) Напишите класс, в котором перегружены операции деления и умножения.
При попытке произвести эти операции со значением ноль, должно выбрасываться исключение.
3) Перехватите исключение из задания 2 и вызовите операцию по новой, 
передав на вход отличное от нуля значение.
4) Напишите утверждение, которое позволит найти ошибку, 
если мы обращаемся к элементу списка по не существующему индексу.
5) Реализуйте пользовательское исключение MySuperException, 
которое будет генерироваться всякий раз, 
если в подаваемом на вход функции списке из целочисленных значений имеется элемент со значением 4.
*/

import 'dart:io';

class WordContainer {
  static void check(String word, String text) {
    if (!text.contains(word)) throw NoWordException();

    print('YEAHHH! Word "$word" has in this text: $text!');
  }
}

class NoWordException implements Exception {
  @override
  String toString() => "Oh shit, I'm sorry! It doesn't have in this text!";
}

class Pair {
  double first, second;

  Pair(this.first, this.second);

  @override
  String toString() => "[$first, $second]";

  void operator *(Pair pair) {
    if (pair.first == 0 || pair.second == 0) throw ZeroException("multiply");

    first *= pair.first;
    second *= pair.second;
  }

  void operator /(Pair pair) {
    if (pair.first == 0 || pair.second == 0) throw ZeroException("divide");

    first /= pair.first;
    second /= pair.second;
  }
}

class ZeroException implements Exception {
  String operation;

  ZeroException(this.operation);

  @override
  String toString() => "Banned to $operation with zero!";
}

class MySuperException implements Exception {
  @override
  String toString() => "There's 4 in this list!!!";
}

void list(List<int> list) {
  if (list.contains(4)) throw MySuperException();

  print(list);
}

main() {
  print("Task 1");
  try {
    WordContainer.check("world", "Hello, world!");
    WordContainer.check(
        "fucking slave", "Billy Herrington is the boss of this gym!");
  } on NoWordException catch (e) {
    print(e);
  }
  print("");

  print("Task 2-3");
  Pair pair1 = Pair(3.5, 6);
  print(pair1);
  Pair pair2 = Pair(4, 15);
  print(pair2);
  pair1 * pair2;
  print(pair1);
  Pair pair3 = Pair(0.5, 3);
  pair1 / pair3;
  print(pair1);

  try {
    pair1 * Pair(0, 1);
  } on ZeroException catch (e) {
    print(e);
    pair1 * Pair(2, 1);
    print(pair1);
  }

  try {
    pair1 / Pair(-324, 0);
  } on ZeroException catch (e) {
    print(e);
    pair1 / Pair(-324, -60);
    print(pair1);
  }
  print("");

  print("Task 4");
  var myList = <int>[1, 2, 3, 4, 5];

  print('Input index');

  var n = int.parse(stdin.readLineSync()!);

  assert(n < myList.length, 'Index outside of list');

  print(myList[n]);
  print("");

  print("Task 5");
  try {
    list([]);
    list([1, 3, 5, 8]);
    list([1, 5, 7, 8, 4, 7]);
  } on MySuperException catch (e) {
    print(e);
  }
  print("");
}