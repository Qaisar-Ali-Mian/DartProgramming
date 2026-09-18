void main() {
  StudentManagementSystem system = StudentManagementSystem();

  UndergraduateStudent student1 = UndergraduateStudent(
    1,
    "Qaisar",
    85,
    "Computer Science",
  );

  UndergraduateStudent student2 = UndergraduateStudent.fromBasicInfo(
    2,
    "Ali",
    "Computer Science",
  );

  UndergraduateStudent student3 = UndergraduateStudent.withDefaultMarks(
    3,
    "Ahmad",
    "Software Engineering",
  );

  student2.marks = 72;

  system.addStudent(student1);
  system.addStudent(student2);
  system.addStudent(student3);

  system.displayStudents();

  system.searchStudent(2);

  student1.showDetails();

  Teacher teacher = Teacher("Engr. Munazza", "Computer Science");
  teacher.showTeacherInfo();

  student1.markAttendance();

  student1.log("Student information accessed");

  system.removeStudent(3);

  print("\nAfter removing student:");
  system.displayStudents();
}

abstract class Person {
  String name;

  Person(this.name);

  void showDetails();
}

abstract class Printable {
  void printInfo();
}

mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

mixin AttendanceMixin {
  int attendance = 0;

  void markAttendance() {
    attendance++;
    print("Attendance marked. Total: $attendance");
  }
}

class Student extends Person with Logger, AttendanceMixin implements Printable {
  int id;
  double _marks;
  String course;

  Student(this.id, String name, this._marks, this.course) : super(name);

  Student.fromBasicInfo(this.id, String name, this.course)
    : _marks = 0,
      super(name);

  Student.withDefaultMarks(int id, String name, String course)
    : this(id, name, 50, course);

  double get marks {
    return _marks;
  }

  set marks(double value) {
    if (value >= 0 && value <= 100) {
      _marks = value;
    } else {
      print("Marks must be between 0 and 100.");
    }
  }

  String calculateGrade() {
    if (_marks >= 90) {
      return "A+";
    } else if (_marks >= 80) {
      return "A";
    } else if (_marks >= 70) {
      return "B";
    } else if (_marks >= 60) {
      return "C";
    } else if (_marks >= 50) {
      return "D";
    } else {
      return "F";
    }
  }

  bool isPassed() {
    return _marks >= 50;
  }

  @override
  void printInfo() {
    print(
      "ID: $id | Name: $name | "
      "Marks: $_marks | Grade: ${calculateGrade()}",
    );
  }

  @override
  void showDetails() {
    print("\n----- Student Details -----");
    print("ID: $id");
    print("Name: $name");
    print("Course: $course");
    print("Marks: $_marks");
    print("Grade: ${calculateGrade()}");
    print("Status: ${isPassed() ? "Passed" : "Failed"}");
  }
}

class UndergraduateStudent extends Student {
  UndergraduateStudent(int id, String name, double marks, String course)
    : super(id, name, marks, course);

  UndergraduateStudent.fromBasicInfo(int id, String name, String course)
    : super.fromBasicInfo(id, name, course);

  UndergraduateStudent.withDefaultMarks(int id, String name, String course)
    : this(id, name, 50, course);

  @override
  void showDetails() {
    print("\n----- Undergraduate Student -----");
    print("ID: $id");
    print("Name: $name");
    print("Course: $course");
    print("Marks: $marks");
    print("Grade: ${calculateGrade()}");
  }
}

class Teacher extends Person {
  String department;

  Teacher(String name, this.department) : super(name);

  void showTeacherInfo() {
    print("\n----- Teacher -----");
    print("Name: $name");
    print("Department: $department");
  }

  @override
  void showDetails() {
    showTeacherInfo();
  }
}

class StudentManagementSystem {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
    print("${student.name} added successfully.");
  }

  void displayStudents() {
    print("\n===== ALL STUDENTS =====");

    if (students.isEmpty) {
      print("No students found.");
      return;
    }

    for (Student student in students) {
      student.printInfo();
    }
  }

  void searchStudent(int id) {
    for (Student student in students) {
      if (student.id == id) {
        print("\nStudent found:");
        student.printInfo();
        return;
      }
    }

    print("Student with ID $id not found.");
  }

  void removeStudent(int id) {
    for (int i = 0; i < students.length; i++) {
      if (students[i].id == id) {
        print("${students[i].name} removed.");
        students.removeAt(i);
        return;
      }
    }

    print("Student not found.");
  }

  void calculateAverage() {
    if (students.isEmpty) {
      print("No students available.");
      return;
    }

    double total = 0;

    for (Student student in students) {
      total += student.marks;
    }

    double average = total / students.length;

    print("Average marks: $average");
  }
}
