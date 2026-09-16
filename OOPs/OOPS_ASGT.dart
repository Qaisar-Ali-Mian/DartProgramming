void main() {
  StudentManagementSystem system = StudentManagementSystem();

  // Creating students using normal constructor
  UndergraduateStudent student1 = UndergraduateStudent(
    1,
    "Qaisar",
    85,
    "Computer Science",
  );

  // Named constructor
  UndergraduateStudent student2 = UndergraduateStudent.fromBasicInfo(
    2,
    "Ali",
    "Computer Science",
  );

  // Constructor redirection
  UndergraduateStudent student3 = UndergraduateStudent.withDefaultMarks(
    3,
    "Ahmad",
    "Software Engineering",
  );

  // Setting marks using setter
  student2.marks = 72;

  // Add students
  system.addStudent(student1);
  system.addStudent(student2);
  system.addStudent(student3);

  // Display students
  system.displayStudents();

  // Search student
  system.searchStudent(2);

  // Show student details
  student1.showDetails();

  // Teacher
  Teacher teacher = Teacher("Engr. Munazza", "Computer Science");
  teacher.showTeacherInfo();

  // Attendance
  student1.markAttendance();

  // Logger mixin
  student1.log("Student information accessed");

  // Remove student
  system.removeStudent(3);

  print("\nAfter removing student:");
  system.displayStudents();
}

// =====================================================
// ABSTRACT CLASS
// =====================================================

abstract class Person {
  String name;

  Person(this.name);

  void showDetails();
}

// =====================================================
// INTERFACE
// =====================================================

abstract class Printable {
  void printInfo();
}

// =====================================================
// MIXIN
// =====================================================

mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

// =====================================================
// ATTENDANCE MIXIN
// =====================================================

mixin AttendanceMixin {
  int attendance = 0;

  void markAttendance() {
    attendance++;
    print("Attendance marked. Total: $attendance");
  }
}

// =====================================================
// STUDENT CLASS
// =====================================================

class Student extends Person with Logger, AttendanceMixin implements Printable {
  int id;

  // Encapsulation
  double _marks;

  String course;

  Student(this.id, String name, this._marks, this.course) : super(name);

  // Named constructor
  Student.fromBasicInfo(this.id, String name, this.course)
    : _marks = 0,
      super(name);

  // Constructor redirection
  Student.withDefaultMarks(int id, String name, String course)
    : this(id, name, 50, course);

  // Getter
  double get marks {
    return _marks;
  }

  // Setter
  set marks(double value) {
    if (value >= 0 && value <= 100) {
      _marks = value;
    } else {
      print("Marks must be between 0 and 100.");
    }
  }

  // Function
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

  // Function
  bool isPassed() {
    return _marks >= 50;
  }

  // Implementing interface method
  @override
  void printInfo() {
    print(
      "ID: $id | Name: $name | "
      "Marks: $_marks | Grade: ${calculateGrade()}",
    );
  }

  // Overriding abstract method
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

// =====================================================
// INHERITANCE
// =====================================================

class UndergraduateStudent extends Student {
  UndergraduateStudent(int id, String name, double marks, String course)
    : super(id, name, marks, course);

  // Named constructor
  UndergraduateStudent.fromBasicInfo(int id, String name, String course)
    : super.fromBasicInfo(id, name, course);

  // Constructor redirection
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

// =====================================================
// TEACHER CLASS
// =====================================================

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

// =====================================================
// STUDENT MANAGEMENT SYSTEM
// =====================================================

class StudentManagementSystem {
  List<Student> students = [];

  // Add student
  void addStudent(Student student) {
    students.add(student);
    print("${student.name} added successfully.");
  }

  // Display all students
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

  // Search student
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

  // Remove student
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

  // Calculate average marks
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
