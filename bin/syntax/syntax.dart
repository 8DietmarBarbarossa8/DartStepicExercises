// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_collection_literals

/*

1) Посчитайте двумя способами вхождение каждого символа в строке «Представим ситуацию, 
что у нас имеется вложенный цикл (цикл в цикле).».
2) Выведите в терминал числа в диапазоне от 23 до 35 используя различные циклы.
3) Заполните список целочисленными значениями от 0 до 99,
 используя циклы и механизм гибкого формирования списков.
4) На основе сформированного в предыдущем задании списка сформируйте новый список и 
добавьте только те элементы из существующего, которые нацело делятся на 5. 
Используйте для этого циклы и механизм гибкого формирования списков.
5) Используя циклы выведите числа в диапазоне от  -35 до -1 с шагом 1, 4 и 7.
6) Найдите максимальное и минимальное по значению число в переменных a, b, c, используя условный оператор if.
7) Выведите элементы списка [4, 5, 6, 7, 2, 1, 2, 3, 4] в обратной последовательности.
8) Выведите все элементы списка [4, 5, 6, 7, 2, 1, 2, 3, 4] в терминал, кроме тех, что содержат значение 2 и 6.
9) Посчитайте сумму элементов списка [4, 5, 6, 7, 2, 1, 2, 3, 4].
10) Найдите среднеарифметическое значение элементов списка [4, 5, 6, 7, 30, 22, 2, 39, 41].
11) Удалите из списка [1, 3, 4, 1, 4, 5, 7, 3, 8, 5] повторяющиеся значения.
12) Посредством оператора switch-case выведите в терминал уведомление является 
подаваемая на вход буква гласной или согласной.
13) Выведите элементы списка [4, 5, 6, 7, 2, 1, 2, 3, 4] с их номером индекса.
14) Используя оператора switch-case выведите в терминал уведомление том, 
какое значение из диапазона от 0 до 5 подается на его вход.

*/

import 'dart:io';

main() {
  var task = 1;
  print("Task ${task++}\n");

  String str =
      "Представим ситуацию, что у нас имеется вложенный цикл (цикл в цикле)";

  print("#1");
  for (int i = 0; i < str.length; i++) {
    var sum = 0;
    for (int j = 0; j < str.length; j++) {
      if (str[i] == str[j]) {
        sum++;
      }
    }
    print("${str[i]} - $sum");
  }

  print("#2");
  List list = str.split('');
  Set letters = list.toSet();
  for (var l in letters) {
    print(
        "Element: $l, count: ${list.where((element) => element == l).length}");
  }

  print("\nTask ${task++}\n");

  print("#1");
  for (int i = 23; i <= 35; i++) {
    print(i);
  }

  print("#2");
  var i = 23;
  while (i <= 35) {
    print(i);
    i++;
  }

  print("#3");
  i = 23;
  do {
    print(i);
    i++;
  } while (i <= 35);

  print("\nTask ${task++}\n");

  List numbers = [for (int i = 0; i <= 99; i++) i];
  numbers.forEach((element) {
    print(element);
  });

  print("\nTask ${task++}\n");

  List numbers2 = [
    for (var n in numbers)
      if (n % 5 == 0) n
  ];
  numbers2.forEach((element) {
    print(element);
  });

  print("\nTask ${task++}\n");

  for (int i = -35; i <= -1; i++) {
    print("Step = 1, i = $i");
  }

  for (int i = -35; i <= -1; i += 4) {
    print("Step = 4, i = $i");
  }

  for (int i = -35; i <= -1; i += 7) {
    print("Step = 7, i = $i");
  }

  print("\nTask ${task++}\n");

  int a = 5, b = 4, c = 3, max;
  if (a > b && a > c) {
    max = a;
  } else if (b > c) {
    max = b;
  } else {
    max = c;
  }
  print("a = $a, b = $b, c = $c, max = $max");

  a = 8;
  b = 10;
  c = 6;
  if (a > b && a > c) {
    max = a;
  } else if (b > c) {
    max = b;
  } else {
    max = c;
  }
  print("a = $a, b = $b, c = $c, max = $max");

  a = 10;
  b = 9;
  c = 11;
  if (a > b && a > c) {
    max = a;
  } else if (b > c) {
    max = b;
  } else {
    max = c;
  }
  print("a = $a, b = $b, c = $c, max = $max");

  a = 88;
  b = 88;
  c = 88;
  if (a > b && a > c) {
    max = a;
  } else if (b > c) {
    max = b;
  } else {
    max = c;
  }
  print("a = $a, b = $b, c = $c, max = $max");

  print("\nTask ${task++}\n");

  List numb = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  print(numb.reversed);

  print("\nTask ${task++}\n");

  List numb1 = numb.where((element) => element != 2 && element != 6).toList();
  print(numb1);

  print("\nTask ${task++}\n");

  print("Sum of list: ${numb.reduce((value, element) => value + element)}");

  print("\nTask ${task++}\n");

  numb = [4, 5, 6, 7, 30, 22, 2, 39, 41];
  double sum = numb.reduce((value, element) => value + element) / numb.length;
  print("Sum of list: $sum");

  print("\nTask ${task++}\n");

  print([1, 3, 4, 1, 4, 5, 7, 3, 8, 5].toSet());

  print("\nTask ${task++}\n");

  var vowels = "aeiouy";
  String res = stdin.readLineSync() ?? '';
  bool key = vowels.contains(res);
  switch (key) {
    case true:
      print("Vowel!");
      break;
    default:
      print("Not vowel or unknown!");
      break;
  }

  print("\nTask ${task++}\n");

  numb = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  for (int i = 0; i < numb.length; i++) {
    print("Index: $i, value: ${numb[i]}");
  }

  print("\nTask ${task++}\n");

  int value = int.tryParse(stdin.readLineSync() ?? "-1") ?? -1;
  switch (value) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    case 3:
      print("Three");
      break;
    case 4:
      print("Four");
      break;
    case 5:
      print("Five");
      break;
    default:
      print("It doesn't join in 0..5!");
      break;
  }

  task = 14;
}
