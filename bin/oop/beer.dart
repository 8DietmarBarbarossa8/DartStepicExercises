// Task 2

class Beer {
  String name;
  double volume;

  Beer(this.name, this.volume);

  @override
  String toString() =>
      "You drink $name with volume: ${volume.toStringAsFixed(2)}";
}

class Man {
  String you, me;
  double maxVolume;

  Man({this.you = "Vsause", this.me = "Mike", this.maxVolume = 1.0});

  void sayHello() {
    print(
        "Hi, $you! $me's here! I'll go at the bark to drink! I can drink $maxVolume leters");
  }

  void drinkBeer(Beer beer) {
    print(maxVolume >= beer.volume ? beer : "I can't drink it!");
  }
}

main() {
  Beer beer = Beer("Bavarian", 0.5);
  Beer beer0 = Beer("Zhigulevskoue", 1.5);

  Man man = Man();
  man.sayHello();
  man.drinkBeer(beer);

  Man man2 = Man(you: "Everyone", me: "Dietrich", maxVolume: 1.4);
  man2.sayHello();
  man2.drinkBeer(beer0);
}
