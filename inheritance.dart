//inheritance: one of the filler of OOPs
void main() {
  Car c1 = Car();
  print(c1.isEngineWorking);
  c1.printWheels();
  Truck t1 = Truck();
  t1.printWheels();

  Vehicle t2 = Car();
  // print(t2.speed);
  // print(t2.isEngineWorking);
  // // print(t2.noOfwheels); you cant access this;
  // // you cant use the properties and methods of Car() class;\
  // print((t2 as Car).noOfWheels);
  // print((t2 as Truck).noOFWheels); // Both are fine

  print(t1.speed);
  t1.accelerate();
  print(t1.speed);
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;

  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void printWheels() {
    print(noOfWheels);
    print(speed);
  }
}

// overriding
class Truck extends Vehicle {
  int noOFWheels = 6;

  // here i also define the same function and its definition this is called method overriding
  // to override a function only the name should match the defition you can write your own
  // the retur type can be changed
  @override
  void accelerate() {
    speed += 5;
  }

  /*
  @override
  int accelerate(){
    speed += 5;
    return speed;
  }
   */

  void printWheels() {
    print(noOFWheels);
  }
}
