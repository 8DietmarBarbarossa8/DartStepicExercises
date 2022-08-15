// Task 3

abstract class Wear {
  void wear();
}

class Hat extends Wear {
  @override
  String toString() => "Type: hat";

  @override
  void wear() {
    print("Take me on your head!");
  }
}

class TShirt extends Wear {
  @override
  String toString() => "Type: t-shirt";

  @override
  void wear() {
    print("Take me on your body!");
  }
}

class Jeans extends Wear {
  @override
  String toString() => "Type: jeans";

  @override
  void wear() {
    print("Take me on your legs!");
  }
}

class Shoes extends Wear {
  @override
  String toString() => "Type: shoes";

  @override
  void wear() {
    print("Take me on your feet!");
  }
}

class Cabinet {
  final int _size;
  final List<Wear> _wears = [];

  Cabinet(this._size);

  void hangUp(Wear wear) {
    if (_wears.length >= _size) {
      print("This cabinet is overload!");
      return;
    }

    _wears.add(wear);
  }

  void showCabinet() {
    if (_wears.isEmpty) {
      print("The cabinet is empty!");
    } else {
      print("-----------------");
      for (int i = 1; i <= _wears.length; i++) {
        print("Number: $i, ${_wears[i - 1]}");
      }
      print("-----------------");
    }
  }

  void takeOff(int number) {
    if (number < 1 || number > _wears.length) {
      print("This number ($number) doesn't exist!");
    } else if (_wears.isNotEmpty) {
      print("Number: $number");
      Wear wear = _wears[number - 1];
      print(wear);
      wear.wear();
      _wears.removeAt(number - 1);
    } else {
      print("The cabinet is empty!");
    }
  }
}

void main(List<String> args) {
  Hat hat = Hat();
  Hat hat2 = Hat();
  TShirt tShirt = TShirt();
  Jeans jeans = Jeans();
  Shoes shoes = Shoes();
  Shoes shoes2 = Shoes();

  Cabinet(5)
    ..showCabinet()
    ..hangUp(hat)
    ..showCabinet()
    ..hangUp(tShirt)
    ..hangUp(jeans)
    ..hangUp(shoes)
    ..showCabinet()
    ..hangUp(hat2)
    ..showCabinet()
    ..hangUp(shoes2)
    ..takeOff(7)
    ..takeOff(-1)
    ..takeOff(5)
    ..showCabinet()
    ..takeOff(4)
    ..showCabinet()
    ..takeOff(3)
    ..showCabinet()
    ..takeOff(2)
    ..showCabinet()
    ..takeOff(1)
    ..showCabinet();
}
