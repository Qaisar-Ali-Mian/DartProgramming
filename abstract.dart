void main() {
  Dog d1 = Dog("Tommy");

  d1.eat();
  d1.sound();
}

abstract class Animal {
  String name;

  Animal(this.name);

  void sound();

  void eat() {
    print("$name is eating");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void sound() {
    print("$name says Woof");
  }
}
