class Person {
  final String name;
  final String address;
  final int age;

  Person({required this.name, required this.address, required this.age});

  Person copyWith({String? name, String? address, int? age}) {
    return Person(
        name: name ?? this.name,
        address: address ?? this.address,
        age: age ?? this.age);
  }
}
