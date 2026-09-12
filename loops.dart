import 'dart:math';

void main() {
  // print Qaisar 10 times;
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // print("Qaisar");
  // this is not a programming way, i am repeating the same code 10 times
  // to achive this we can write loops
  // loops is basically used for repetitive task

  //for loop,while loop

  for (int i = 0; i < 10; i++) {
    print("Qaisar ${i + 1}");
  }
  // three main part
  //int i =0; initialization;
  //i<10; condition
  // i++; increment

  String name = "Qaisar Ali";
  for (int i = 0; i <= name.length; i++) {
    print(name.substring(0, i));
  }

  // avoid using infinite loop

  // While loop
  /*
  initilizaiton
  while(condition){
    satetment
    increment
  }
*/
  int i = 0;
  while (i < 10) {
    print(name.substring(0, i));
    i++;
  }

  // the same things you can do uing for loop you can do using while loop
  // main diff is for loop for increment task like you know the loop will lern 10 time etc
  // while loop is when you have a conditon but nor the excat count

  //----------------------------------------------------------
  // do while loop
  // a loop will eun atleast one if condition is false it will still run at least once
  print("do while loop");
  i = 0;
  do {
    print(name.substring(0, i));
    i++;
  } while (i <= name.length);

  // break and continue
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
  // if conditon become true and enther the if blook the break will execute anf the loop will end

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
  //contune will skip the iteration and move to next
}
