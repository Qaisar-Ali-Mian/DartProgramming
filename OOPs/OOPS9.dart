// single inheritance

void main() {
  Student s1 = Student("Qaisar Ali Mian", 21);
  s1.showName();
  s1.showStudent();
}

class Person {
  String _name;

  Person(this._name) {
    print("obj created");
  }

  void showName() {
    print(_name);
  }
}

class Student extends Person {
  int rollNo;

  Student(name, this.rollNo) : super(name);

  void showStudent() {
    print(rollNo);
  }
}
