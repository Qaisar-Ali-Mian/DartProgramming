// multilevel inheritance
void main() {
  SportCar obj = SportCar("Toyota", "Supra", 250);
  obj.showBrand();
  obj.showModel();
  obj.showTopSpeed();
}

class Vehicle {
  String brand;

  Vehicle(this.brand);

  void showBrand() {
    print("brand $brand");
  }
}

class Car extends Vehicle {
  String model;

  Car(brand, this.model) : super(brand);

  void showModel() {
    print("model $model");
  }
}

class SportCar extends Car {
  int topSpeed;

  SportCar(brand, model, this.topSpeed) : super(brand, model);

  void showTopSpeed() {
    print("Speed $topSpeed");
  }
}
