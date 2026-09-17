// map -> key:value
void main() {
  // three studnet name and marks
  // Map m1 = {"qaisar": 99, "fahad": 88, "Maaz": 80};
  // print(m1);
  // print(m1['qaisar']);
  // print(m1.runtimeType);

  // Map<String, int> m2 = {"num1": 10, "num2": 20, "num3": 40};
  // print(m2);

  // print(m2["num1"]?.isEven);

  Map<String, int> m1 = {"num1": 10, "num2": 20, "num3": 40};
  // print(m1);
  // m1["num4"] = 50;
  // print(m1);
  // m1["num1"] = 100;
  // print(m1);

  // m1.addAll({"num6": 70});
  // print(m1);

  // m1.remove("num6");
  // print(m1);

  // // iterating
  // print(m1.length);
  print(m1.keys.toList());
  print(m1.values.toList());

  print("Using for loop");

  for (int i = 0; i < m1.length; i++) {
    print("${m1.keys.toList()[i]} : ${m1.values.toList()[i]}");
  }

  print("Using for Each");
  m1.forEach(((String key, int value) => print("$key : $value")));
}
