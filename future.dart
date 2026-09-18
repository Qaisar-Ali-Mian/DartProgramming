// future (Promises)

// void main() async {
//   print("hello");
//   dataWillComeIn2Sec().then((val) => print("then value $val"));
//   var result = await fun1();
//   print(result);
//   print("hwllooo");
//   print("Hiii");
// }

// Future<String> dataWillComeIn2Sec() async {
//   return Future.delayed(Duration(seconds: 2), () async => "2 sec Hiiiii ");
// }

// Future<String> fun1() {
//   return Future.delayed(Duration(seconds: 2), () async => "2 sec Hiiiii");
// }

// --------------------------------------------------------------------
// Practice Question 1

// void main() async {
//   Map<int, dynamic> students = {
//     101: {"name": "Qaisar", "semester": 5},
//     102: {"name": "Ali", "semester": 4},
//     103: {"name": "Ahmed", "semester": 3},
//   };

//   getStudentData(students, 101).then((value) => {print(value)});

//   print("Priting data waitt....");
//   getStudentData(students, 104).then((value) => {print(value)});
// }

// Future<String> getStudentData(students, int roll) async {
//   return Future.delayed(Duration(seconds: 5), () {
//     if (students[roll] != null) {
//       return "Name : ${students[roll]['name']}, Roll: ${students[roll]['semester']}";
//     }
//     return "Student with roll no: $roll not found";
//   });
// }

//-----------------------------------------------------------------------

void main() async {
  double balance = 1000.0;
  print("Checking balance...");
  double result = await checkBalance(balance);
  print("Balance: $result");
  print("transaction completed");
}

Future<double> checkBalance(double balance) async {
  return Future.delayed(Duration(seconds: 3), () {
    return balance;
  });
}
