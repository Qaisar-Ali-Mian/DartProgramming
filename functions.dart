//Function
// function is a similar satatement group toghetr to reuse in our code
// we are using function but it was bulit in like print() etc
void main() {
  printName(); // function calling

  print(returnString());
  print(returnAge());
  print(info().$2);
  var (name, age) = info();
  print(name);
  print(age);
  printInfo(age: 20, isSudent: true, name: "Qaisar");
  print(returnStuff());
}

//function definition;
void printName() {
  print("Qaisar Ali Mian");
}
// we can write anything loops,ifelse we have lerned so far we can use it inside fucntion

// return value
String returnString() {
  return "qaisar ali mian";
}
// we need to write the return type before the name of a fucntion
// it will show that the function will return a string value

int returnAge() {
  return 20;
}
//this above fucntion return a integar

//-------------------------
// returing multiple
(String, int) info() {
  return ("Qaisar", 20);
}

// note: writing anything below return will not executed
// int p() {
//   return 0;
//   print("End");
// -----------------------------------------------

// aurgument/parameter
// void printInfo(String name, int age) {
//   print("Name: ${name}\nAge: ${age}");
// }
// local variable -> a varible insde a funtion
//global variable -> variable outside a fucntion

// key word arguments
void printInfo({
  required String name,
  required int age,
  required bool isSudent,
}) {
  print(name);
  print(age);
  print(isSudent);
}

String returnStuff() => "this is stuff";
