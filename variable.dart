void main() {
  //container to store value,calculation,data etc

  // String -> used to stroe text
  String name = "Qaisar ali mian";
  print(name);
  print("length of name is ${name.length}");
  // int -> used to store the integers(3,55,-33,78);
  int age = 20;
  print(age);

  //double -> used to store decimals (3.147,4.555, -5.66);
  double pi = 22 / 7;
  print(pi);

  //boolean -> used to store true/false
  bool isStudent = true;
  print(isStudent);

  //dynamic -> can store any value(not recommanded);
  dynamic something = 45;
  print(something);

  // var and dynamic to avoid
  var v = 18;
  // v = 20; allowed
  // v = "name" not allowed

  dynamic c = 18;
  // c = "text";  allowed;

  //variable name should be in camelCase;
  int currAge = 20;
  print(currAge);

  //reassigning a variable
  String greeting = "hello gyuz";
  print(greeting);

  greeting = "hellowww";
  print(greeting);

  //string interpolation
  String firstName = "Qaisar";
  String lastName = "Mian";
  print(firstName + ' ' + lastName);
  print("$firstName $lastName");
  print("${firstName.length}");

  //multiline string
  String intro = '''my name is qaisar,
and i am learning dart programming,
thank you.''';

  print(intro);

  //special characters(\n) can also be used for new line

  //other variable
  // var/final /const
  var uniName = "Uet abbottabad";
  print(uniName.length);
  print(uniName);

  const pi1 = 22 / 7;
  print(pi1);
  // you cannot reassign the value of const
}
