//set
// same as list but dont have duplicates. used {};

void main() {
  // Set s1 = {1, 2, 3, 4};
  // print(s1.runtimeType);
  // print(s1);

  // duplicates are autmatically removed
  Set<int> s2 = {22, 333, 444, 555, 333};
  print(s2);

  // set of other data types
  Set<String> names = {"Qaisar", "Abdullah", "fahad"};
  var num = {1, 4, 4, 3, 6};
  dynamic num1 = {1, "hi", true, 3.4};
  Set num2 = {1, 'tooo', true};
  print(num.runtimeType);
  print(num1.runtimeType);

  Set s1 = {1, 2, 3, 4};
  print(s1);
  s1.add(34);
  print(s1);
  s1.add(34);
  print(s1);

  Set s3 = {5, 6, 7, 8};
  s1.addAll(s3);
  print(s1);

  s1.remove(1);
  s1.remove(34);
  print(s1);

  // cheking if smething is present in a Set or not
  print(s1.contains(34));
  print(s1.contains(2));

  // accessing last and first items
  print(s1.first);
  print(s1.last);

  // loop through set
  print("Looping through Set");
  for (int i in s1) {
    print(i);
  }

  print("lenght ${s1.length}");

  // set operation union,intersection and diffrence
  Set<String> studentsA = {"Ali", "Ahmed", "Usman", "Qaisar"};
  Set<String> studentsB = {"Usman", "Qaisar", "Hamza", "Bilal"};

  // Union
  print("Union:");
  print(studentsA.union(studentsB));

  // Intersection
  print("Intersection:");
  print(studentsA.intersection(studentsB));

  // Difference
  print("Difference:");
  print(studentsA.difference(studentsB));

  // intro for forEach()
  studentsB.forEach((String name) => print(name));
}
