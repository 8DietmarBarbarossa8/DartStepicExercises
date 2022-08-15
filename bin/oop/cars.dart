// Task 1

class Car {
  String name;
  double maxSpeed;

  Car(this.name, this.maxSpeed);

  void getName() {
    print("Yeah! My name's $name!");
  }

  void move() {
    print("My max speed = $maxSpeed");
  }
}

class Zhiguli extends Car {
  Zhiguli(this.name, this.maxSpeed) : super(name, maxSpeed);

  @override
  void move() {
    print("I can move slowly with max speed = $maxSpeed");
  }

  @override
  double maxSpeed;

  @override
  String name;
}

class Oka extends Car {
  Oka(this.name, this.maxSpeed) : super(name, maxSpeed);

  @override
  void move() {
    print("I can move very slowly with max speed = $maxSpeed");
  }

  void printModels() {
    print("Ока (ВАЗ-1111, СеАЗ-1111, КамАЗ-1111");
  }

  @override
  double maxSpeed;

  @override
  String name;
}

main() {
  Car car = Car("Car", 200);
  car.name;
  car.maxSpeed;
  car.getName();
  car.move();

  Zhiguli zhiguli = Zhiguli("Жигуль", 150);
  zhiguli.getName();
  zhiguli.move();

  // Cascade notation
  Oka("Ока", 130)
    ..getName()
    ..printModels()
    ..move();
}
