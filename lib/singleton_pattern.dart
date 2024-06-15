class Singleton1 {
  static Singleton1? _instance;

  Singleton1._interval() {
    print("Private Constructor Run");
  }

  static Singleton1 get instance {
    _instance ??= Singleton1._interval();
    return _instance!;
  }
}
