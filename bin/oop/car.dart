// Task 9

enum State { stop, move, turn }

class Car {
  void doAction(State state) {
    switch (state) {
      case State.stop:
        print("Stop!");
        break;
      case State.move:
        print("Move!");
        break;
      case State.turn:
        print("Turn!");
        break;
    }
  }
}

main() {
  Car()
    ..doAction(State.move)
    ..doAction(State.turn)
    ..doAction(State.stop);
}
