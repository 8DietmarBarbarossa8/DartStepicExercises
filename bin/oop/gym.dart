// Task 4

enum Weight { light, defaultWeight, underMedium, medium, upperMedium, heavy }

class Plate {
  late final double weight;

  Plate({Weight weight = Weight.defaultWeight}) {
    switch (weight) {
      case Weight.light:
        this.weight = 2.5;
        break;
      case Weight.underMedium:
        this.weight = 10;
        break;
      case Weight.medium:
        this.weight = 15;
        break;
      case Weight.upperMedium:
        this.weight = 20;
        break;
      case Weight.heavy:
        this.weight = 30;
        break;
      default:
        this.weight = 5;
        break;
    }
  }
}

class Vulture {
  double maxWeight, currentWeight = 0.0;
  List<Plate> leftSide = [];
  List<Plate> rightSide = [];

  Vulture(this.maxWeight);

  void show() {
    String left = "";
    for (int i = 0; i < leftSide.length; i++) {
      left += "[${leftSide[i].weight.toString()}]";
    }

    String right = "";
    for (int i = rightSide.length - 1; i >= 0; i--) {
      right += "[${rightSide[i].weight.toString()}]";
    }

    print("$left*---------------*$right");
    print("Current weight = ${_getTotalWeight()} kg");
    print("Max weight = $maxWeight kg");
  }

  void addLeft(Plate plate) {
    _add(leftSide, plate);
  }

  void addRight(Plate plate) {
    _add(rightSide, plate);
  }

  void _add(List list, Plate plate) {
    if (plate.weight + currentWeight > maxWeight) {
      print("The vulture is overloaded!");
      return;
    }

    list.add(plate);
    currentWeight += plate.weight;
  }

  void removeLeft() {
    _remove(leftSide, "left");
  }

  void removeRight() {
    _remove(rightSide, "right");
  }

  void _remove(List<Plate> list, String side) {
    if (list.isEmpty) {
      print("The $side side is empty!");
      return;
    }

    int lastIndex = list.length - 1;
    double minus = list[lastIndex].weight;
    list.removeAt(lastIndex);
    currentWeight -= minus;
  }

  bool isBalance() {
    if (leftSide.length != rightSide.length) return false;

    for (int i = 0; i < leftSide.length; i++) {
      if (leftSide[i].weight != rightSide[i].weight) return false;
    }

    return true;
  }

  double _getTotalWeight() {
    double sum = 0;

    for (int i = 0; i < leftSide.length; i++) {
      sum += leftSide[i].weight;
    }

    for (int i = 0; i < rightSide.length; i++) {
      sum += rightSide[i].weight;
    }

    return sum;
  }
}

void main(List<String> args) {
  Vulture vulture = Vulture(100);
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.addLeft(Plate());
  vulture.addRight(Plate());

  Plate uMPlate = Plate(weight: Weight.underMedium);
  vulture.addLeft(uMPlate);
  vulture.addRight(uMPlate);

  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeRight();
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeRight();
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeRight();
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeLeft();
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeLeft();
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  Plate plate1 = Plate(weight: Weight.underMedium);
  Plate plate2 = Plate(weight: Weight.upperMedium);
  vulture.addLeft(plate1);
  vulture.addRight(plate2);
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.removeRight();
  vulture.removeLeft();

  Plate heavyPlate = Plate(weight: Weight.heavy);
  vulture.addLeft(heavyPlate);
  vulture.addRight(heavyPlate);
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  Plate upperMediumPlate = Plate(weight: Weight.upperMedium);
  vulture.addLeft(upperMediumPlate);
  vulture.addRight(upperMediumPlate);
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");

  vulture.addLeft(upperMediumPlate);
  vulture.addRight(upperMediumPlate);
  vulture.show();
  print("Balance: ${vulture.isBalance()}");
  print("");
}
