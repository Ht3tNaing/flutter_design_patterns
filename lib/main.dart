import 'package:design_pattern/adapter_design_pattern.dart';
import 'package:design_pattern/factory_method.dart';
import 'package:design_pattern/prototype.dart';
import 'package:design_pattern/singleton_pattern.dart';

void main() {
// Factory Method
  // final carFactory = CarFactory('Honda');
  // carFactory.build();
  // carFactory.drive();

// Singleton
  // Singleton1 singleton2 = Singleton1.instance;
  // Singleton1 singleton1 = Singleton1.instance;

//Factory method with singleleton
  // Toyota toyota = Toyota.instance;
  // toyota.build();

//Prototype
  // Person person = Person(name: "Aung", address: "Yangon", age: 21);
  // Person person1 = person.copyWith(name: "Zaw",address: 'Mandalay');

  // print("${person.name} is live in ${person.address} and age is ${person.age}");
  // print("${person1.name} is live in ${person1.address} and age is ${person1.age}");

//Adapter Pattern
  ApiAdapter adapter = ApiAdapter();
  List<Post> posts = adapter.getAllPost();

  for (Post post in posts) {
    print(post.title);
    print(post.description);
    print("---------------------------");
  }
}
