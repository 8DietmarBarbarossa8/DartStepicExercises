// Task 15

abstract class Dishes {
  void interactiveFood();
}

class Plate extends Dishes {
  @override
  String toString() => "Type: plate";

  @override
  void interactiveFood() {
    print("Food is lying down on me!");
  }
}

class Bowl extends Dishes {
  @override
  String toString() => "Type: bowl";

  @override
  void interactiveFood() {
    print("Food and soup are lying down on me!");
  }
}

class Glass extends Dishes {
  @override
  String toString() => "Type: glass";

  @override
  void interactiveFood() {
    print("I can contain some liquids!");
  }
}

class Spoon extends Dishes {
  @override
  String toString() => "Type: spoon";

  @override
  void interactiveFood() {
    print("I can scoop!");
  }
}

class Fork extends Dishes {
  @override
  String toString() => "Type: fork";

  @override
  void interactiveFood() {
    print("I can pierce!");
  }
}

class Knife extends Dishes {
  @override
  String toString() => "Type: knife";

  @override
  void interactiveFood() {
    print("I can cut!");
  }
}

class Table {
  final int _size;
  final List<Dishes> _dishes = [];

  Table(this._size);

  void put(Dishes dishes) {
    if (_dishes.length >= _size) {
      print("This table is overload!");
      return;
    }

    _dishes.add(dishes);
  }

  void showTable() {
    if (_dishes.isEmpty) {
      print("The table is empty!");
    } else {
      print("-----------------");
      for (int i = 1; i <= _dishes.length; i++) {
        print("Number: $i, ${_dishes[i - 1]}");
      }
      print("-----------------");
    }
  }

  void getOut(int number) {
    if (number < 1 || number > _dishes.length) {
      print("This number ($number) doesn't exist!");
    } else if (_dishes.isNotEmpty) {
      print("Number: $number");
      Dishes dishes = _dishes[number - 1];
      print(dishes);
      dishes.interactiveFood();
      _dishes.removeAt(number - 1);
    } else {
      print("The table is empty!");
    }
  }
}

void main(List<String> args) {
  Plate plate = Plate();
  Plate plate2 = Plate();
  Bowl bowl = Bowl();
  Glass glass = Glass();
  Spoon spoon = Spoon();
  Spoon spoon2 = Spoon();
  Fork fork = Fork();
  Knife knife = Knife();

  Table(7)
    ..showTable()
    ..put(fork)
    ..showTable()
    ..put(knife)
    ..showTable()
    ..put(plate)
    ..showTable()
    ..put(bowl)
    ..put(glass)
    ..put(spoon)
    ..showTable()
    ..put(plate2)
    ..showTable()
    ..put(spoon2)
    ..getOut(100)
    ..getOut(-1)
    ..getOut(7)
    ..showTable()
    ..getOut(6)
    ..showTable()
    ..getOut(5)
    ..showTable()
    ..getOut(4)
    ..showTable()
    ..getOut(3)
    ..showTable()
    ..getOut(2)
    ..showTable()
    ..getOut(1)
    ..showTable();
}
