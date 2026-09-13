// classes

// void main() {
//   Cookie cookie = Cookie();
//   print(cookie.shape);
//   cookie.baking();
//   print(cookie.isCool());

//   cookie.shape = "triangle";
//   print(cookie.shape);
// }

// // class name should be PascalCase
// class Cookie {
//   String shape = 'circle';
//   double size = 15.2;

//   void baking() {
//     print("baking start now");
//   }

//   bool isCool() {
//     return false;
//   }
// }

// void main() {
//   Student s1 = Student("Qaisar", 21);
//   print(s1.name);
//   print(s1.roll);
// }

// class Student {
//   String? name;
//   int? roll;

//   //constructor
//   //same name as class name with no return type
//   // it is a sepcial function returning nothing
//   // called automatically when objct is created
//   Student(String Name, int Roll) {
//     name = Name;
//     roll = Roll;
//     print("cstr called");
//   }
// }

// -------------------------------------
// void main() {
//   Car a1 = Car(capacity: 5, name: "toyota", doors: 4);
//   a1.start();
//   a1.printAllData();
// }

// class Car {
//   final String name ;
//   final int? doors;
//   final int? capacity;

//   Car({required this.name, this.doors,this.capacity});

//   void start() {
//     print("the car $name is started");
//   }

//   void Break() {
//     print("break");
//   }

//   void printAllData() {
//     print('name $name');
//     print("capacity: $capacity");
//     print("doors $doors");
//   }
// }

//-----------------------
// private, getter,, setter

// void main() {
//   Student a1 = Student("Qaisar", 21, 031212121212);
//   print(
//     a1._number,
//   ); // you can access this as well as it is private to other files
//   print(a1.number);

//   a1.setNumber = 034444444;
//   print(a1.number);
// }

// class Student {
//   String name;
//   int roll;
//   // number is private
//   // this will private to a file not a class
//   // the cocept is little diffrent from c/C++
//   int? _number;

//   Student(this.name, this.roll, this._number);

//   // Getters: a fucntion used to return value which is insde the class(for calculation etc)
//   int? get number => _number;
//   // get is keyword in dart to write Getters
//   // you can use number is property to get the value of _number

//   // Setter:  used to set value of a variable
//   set setNumber(int number) {
//     this._number = number;
//   }
//   // set is keyword for setters
//   // it should not hve a retuen type;

// }

//_________________________________________________

// static member belons to class
void main() {
  Student s1 = Student();
  Student s2 = Student();
  Student s3 = Student();

  print(Student.count); // 3
}

class Student {
  static int count = 0;

  Student() {
    count++;
  }
}
