// instance Method

void main() {
  var s1 = Student("Qaisar", 21);
  s1.printInfo();
}

class Student {
  String? name;
  int? age;

  Student(this.name, this.age);

  void printInfo() {
    print(name);
    print(age);
  }
}
