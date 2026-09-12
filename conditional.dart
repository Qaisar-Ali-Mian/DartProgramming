void main() {
  //conditional statements(if,else,switch,ternary)
  int age = 18;
  if (age >= 18) {
    print("Adult");
  }
  if (age <= 18) {
    print("child");
  }

  //using if else block;
  //the main problem in above if statement is it will check both conditions
  // to avoid this we can use if else block
  if (age >= 18) {
    print("adult");
  } else {
    print("child");
  }

  // what if we have to check if age >60 you are grandfather how to do it?
  // using if else if else block

  if (age >= 60) {
    print("grandfather");
  } else if (age >= 18) {
    print("adult");
  } else {
    print("child");
  }
  // in the above code the order is important;

  /* if(condition(it should return true or fale)){
  satetment}
  else{
  if conditon false then this block wiill run} 
  */

  //___________________________________________
  //nested if else

  if (age >= 18) {
    print("you are adult");
    if (age >= 30) {
      print("you are mature as well");
    } else {
      print("you are only adult");
    }
  } else {
    print('you are child');
    if (age <= 5) {
      print('ohhh babeeee');
    } else {
      print("have a nice day child");
    }
  }

  //comparison operator
  print(age == 18);
  print(age >= 18);
  print(age <= 18);
  print(age != 18);
  print(age > 18);
  print(age < 18);
  // this will return ether true or flase

  //logical operator (and , or and not);
  print(age > 18 && true); //both condition shuld be true to get ture
  print(age > 18 || true); // at least one conditoiin must be true
  print(!(age > 18)); // neagation if true -> false and vice versa
  // we can use this to make more complex condtional statement;

  if (age > 18) {
    String text = 'adult';
  } else {
    String text = "child";
  }
  // print(text);
  //the variable you creaated insde the {} braket you cannot access it outside it;

  // Ternary operator
  String value = (age < 18) ? "Yes" : "no";
  print(value);

  //Swtich statement

  int num1, num2;
  num1 = 4;
  num2 = 3;
  String op = '-';

  switch (op) {
    case "+":
      print(num1 + num2);
    case ('-'):
      print(num1 - num2);
    case ('/'):
      print(num1 / num2);
    default:
      print("operator error");
  }
}
