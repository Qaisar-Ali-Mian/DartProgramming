// Redirecting constructor

void main() {
  var s1 = Student("qaisar", 21);
  print(s1.name);
  print(s1.age);

  var s2 = Student.defaultStudent();
  print(s2.name);
  print(s2.age);
}

class Student {
  String name;
  int age;

  Student(this.name, this.age);
  Student.defaultStudent() : this("Unknown", 0);
}
