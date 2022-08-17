// Task 7

import 'package:dart_stepic_exercises/src/file.dart';

import 'beer.dart';

class Garage {
  final List _garage = [];

  void add<T>(T element) {
    _garage.add(element);
  }

  void showGarage() {
    _garage.forEach((element) {
      print(element);
    });
  }

  T? remove<T>() {
    if (_garage.isEmpty) return null;

    T value = _garage.removeLast();
    return value;
  }

  @override
  String toString() => _garage.toString();
}

main() {
  Garage garage = Garage();
  garage.showGarage();
  print("");

  garage.add(25);
  garage.add(true);
  garage.add(3.14);
  garage.add('\$');
  garage.add('World');
  garage.add(Garage()
    ..add(36)
    ..add("Hello"));
  garage.add(Beer("Bavarian", 1.5));
  garage.add(CSV());
  garage.showGarage();
  print("");

  CSV csv = garage.remove();
  Beer beer = garage.remove();
  Garage garage1 = garage.remove();
  // Garage garage2 = garage.remove();
  var word = garage.remove();
  garage.showGarage();
  print("");

  print("Revomed elemets");
  print(csv);
  print(beer);
  print(garage1);
  print(word);

  // Next, it'll return null instead exception
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
  garage.remove();
}
