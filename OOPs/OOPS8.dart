//inheritance
// base class -> whihc property is going to be inhereted
// derived class -> which is used to inhert the properties of base class
// fou types mainly
// single inheritance
//  multiple inheiritance dart doesnt support this type of inherita ce
// multiple inheritance

// hirarchical inheritance
// main() {
//   var sparrow = Sparrow();
//   var parrot = Parrot();

//   print("sparrow");
//   print(sparrow.birdName());
//   print(sparrow.catName());

//   print("Parrot");
//   print(parrot.birdName());
//   print(parrot.catName());
// }

// class Bird {
//   String catName() {
//     return "bird";
//   }
// }

// class Sparrow extends Bird {
//   String birdName() {
//     return "sparrow";
//   }
// }

// class Parrot extends Bird {
//   String birdName() {
//     return "Parrot";
//   }
// }

void main() {
  Student s1 = Student("Qaisar", 21);

  s1.showName();
  s1.showRollNo();

  print("");

  Teacher t1 = Teacher("Ali", "Computer Networks");

  t1.showName();
  t1.showSubject();
}

class Person {
  String name;

  Person(this.name);

  void showName() {
    print("Name: $name");
  }
}

class Student extends Person {
  int rollNo;

  Student(String name, this.rollNo) : super(name);

  void showRollNo() {
    print("Roll No: $rollNo");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, this.subject) : super(name);

  void showSubject() {
    print("Subject: $subject");
  }
}
