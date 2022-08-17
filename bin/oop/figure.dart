// Task 10, 12

import 'package:test/test.dart';

abstract class Figure {
  double square();
}

class Rectangle extends Figure {
  final double a, b;

  Rectangle(this.a, this.b);

  @override
  double square() => a * b;
}

class Triangle extends Figure {
  final double a, b;

  Triangle(this.a, this.b);

  @override
  double square() => a * b / 2;
}

class Circle extends Figure {
  final double r;

  Circle(this.r);

  @override
  double square() => 3.14 * r * r;
}

class Figures {
  final List<Figure> _list = [];

  void add(Figure figure) {
    _list.add(figure);
  }

  void show({Figure? figure}) {
    if (figure == null) {
      for (var figure in _list) {
        _printText(figure);
      }
    } else {
      _printText(figure);
    }
  }

  void _printText(Figure figure) {
    if (figure is Rectangle) {
      print("--------------");
      print("Figure: rectangle");
      print("Square: ${figure.square()}");
    } else if (figure is Triangle) {
      print("--------------");
      print("Figure: triangle");
      print("Square: ${figure.square()}");
    } else if (figure is Circle) {
      print("--------------");
      print("Figure: circle");
      print("Square: ${figure.square()}");
    } else {
      print("Unknown figure!");
    }
  }

  void findMaxSquareFigure() {
    if (_list.isEmpty) {
      print("This list is empty!");
      return;
    }

    int maxI = 0;
    double max = 0.0;
    for (int i = 0; i < _list.length; i++) {
      double res = _list[i].square();
      if (max < res) {
        max = res;
        maxI = i;
      }
    }

    show(figure: _list[maxI]);
    print("Index: $maxI");
  }
}

void main(List<String> args) {
  test("Operation overload", () {
    Rectangle rectangle = Rectangle(10, 8);
    Triangle triangle = Triangle(6, 4);
    Circle circle = Circle(5.1);

    expect(rectangle.square(), equals(80));
    expect(triangle.square(), equals(12));
    expect(circle.square(), equals(81.67139999999999));

    Figures figures = Figures();
    figures.show();
    print("");

    figures.add(Triangle(4, 5));
    figures.add(Circle(3.14));
    figures.add(Rectangle(12, 8));
    figures.add(Triangle(45, 3));
    figures.add(Triangle(3.5, 8));
    figures.add(Circle(5));
    figures.show();

    figures.findMaxSquareFigure();
  });
}
