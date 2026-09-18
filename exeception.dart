//Exception handling in Dart
void main() {
  // print(10 ~/ 3);
  // print(10 / 0);
  // try {
  //   print(10 / 0);
  // } catch (e) {
  //   print("Error: $e");
  // } finally {
  //   print("Finally block executed");
  //   //releasing resourses or closing files
  // }
  // print("Qaisar");

  // try {
  //   int number = int.parse("hello");
  //   print(number);
  // } on FormatException {
  //   print("errorrr");
  // }

  // try {
  //   int result = 10 ~/ 0;
  //   print(result);
  // } catch (e, stackTrace) {
  //   print("Exception: $e");
  //   print("Stack trace: $stackTrace");

  //   print("ABoveeeeee---------------");
  // }

  // Throwing custom exception
  // int age = 17;
  // if (age < 18) {
  //   try {
  //     throw Exception("Age must be 18 or older");
  //   } catch (e) {
  //     print("Exception: $e");
  //   }
  //   throw Exception("Age must be 18 or older");
  // } else {
  //   print("you are allowed to vote");
  // }

  void checkAge(int age) {
    if (age < 18) {
      throw AgeLimitException("Age must be 18 or older");
    } else {
      print("you are allowed to vote");
    }
  }

  try {
    checkAge(17);
  } on AgeLimitException {
    print("age limit problem");
    // print("Stack trace: $stackTrace");
  }
}

class AgeLimitException implements Exception {
  String message;
  AgeLimitException(this.message);

  @override
  String toString() {
    return "AgeLimitException: $message";
  }
}
