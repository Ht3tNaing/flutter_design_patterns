abstract class CarFactory {
  void build();
  void drive();
  factory CarFactory(String carType) {
    switch (carType) {
      case "Honda":
        return Honda();
      case "Toyota":
        return Toyota.instance;
      default:
        return Toyota.instance;
    }
  }
}

class Toyota implements CarFactory {
  static Toyota? _instace;
  Toyota._interval();
  static Toyota get instance {
    _instace ??= Toyota._interval();
    return _instace!;
  }

  @override
  void build() {
    print("Toyota is building car");
  }

  @override
  void drive() {
    print("toyota is driving");
  }
}

class Honda implements CarFactory {
  @override
  void build() {
    print("Honda is building car");
  }

  @override
  void drive() {
    print("Honda is driving");
  }
}
