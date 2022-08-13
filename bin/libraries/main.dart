import 'package:dart_stepic_exercises/src/library1.dart';
import 'package:dart_stepic_exercises/src/library2.dart';
import 'package:dart_stepic_exercises/src/library3.dart';
import 'package:dart_stepic_exercises/src/library4.dart';

import '../functions/functions.dart';

main() {
  print("Lib 1");
  print(maxOfThree(5, 13, 12)); // 13
  print(listSum([1, 2, 3, 4, 5, 5, 53, 53, 53, 54, 5, 4])); // 242
  print(listMult([1, 2, 3, 4, 5, 5, 53, 53, 53, 54, 5, 4])); // 96472296000

  print("Lib 2");
  print(removeDuplicates([1, 2, 3, 3, 3, 9, 25])); // [1, 2, 3, 9, 25]
  print(factorial(25)); // 7034535277573963776
  print(contain([123, 46, 7, 89], 89)); // true

  print("Lib 3");
  print(divideBy3And4([12, 3, 4, 6, 24, 120, 36, 15])); // 4
  print(listAverage([7, 0, -7, 3, 4])); // 1.4

  print("Lib 4");
  print(createListFrom23To47()); // [23-47]
  print(createListFrom0To1(step : 0.05)); // [0-1 with step 0.05]

  print("Lib 5");
  print(invertSequence([3, 7, 5, 2, 8])); // [8, 2, 5, 7, 3]
  print(countOfSymbol(['a', 'n', 'o', 'n', 'y', 'm', 'o', 'u', 's'], 'o')); // 2
}
