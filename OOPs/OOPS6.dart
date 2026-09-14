void main() {
  Person p1 = Person("Qaisar", 21);
  print(p1.name);
  print(p1.getAge);

  p1.name = "Qaisar ali mian";
  print(p1.name);
}

class Person {
  String _name;
  int age;

  Person(this._name, this.age);

  String get name => _name;

  int get getAge => age;

  set name(String name) => _name = name;

  set setAge(int age) => this.age = age;
}
