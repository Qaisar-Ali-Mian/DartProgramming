// enum
// used when we have a fixed number of values or choices

void main() {
  // basic enum
  Day today = Day.monday;
  print(today);

  // accessing enum values
  print(Day.monday);
  print(Day.friday);

  // checking enum values
  if (today == Day.monday) {
    print("Today is Monday");
  }

  // enum with switch
  switch (today) {
    case Day.monday:
      print("Monday");

    case Day.tuesday:
      print("Tuesday");

    case Day.wednesday:
      print("Wednesday");

    case Day.thursday:
      print("Thursday");

    case Day.friday:
      print("Friday");

    case Day.saturday:
      print("Saturday");

    case Day.sunday:
      print("Sunday");
  }

  // getting all enum values
  print(Day.values);

  // loop through enum
  for (var day in Day.values) {
    print(day);
  }

  // accessing index of enum
  print(Day.monday.index);
  print(Day.friday.index);

  // accessing name of enum
  print(Day.monday.name);
  print(Day.friday.name);

  // enum with property
  print(Status.active.isActive);
  print(Status.inactive.isActive);

  // enum with constructor
  print(Grade.A.marks);
  print(Grade.B.marks);
  print(Grade.C.marks);

  // enum with method
  print(Grade.A.result());
  print(Grade.C.result());
}

// enum
enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

// enum with property and constructor
enum Status {
  active(true),
  inactive(false);

  final bool isActive;

  const Status(this.isActive);
}

// enum with constructor and method
enum Grade {
  A(90),
  B(80),
  C(70),
  D(50);

  final int marks;

  const Grade(this.marks);

  String result() {
    if (marks >= 60) {
      return "Passed";
    } else {
      return "Failed";
    }
  }
}
