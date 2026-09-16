// interfaces

void main() {
  MacBook m1 = MacBook("Apple");
  m1.turnOn();
  m1.turnOf();
}

class Laptop {
  String name;

  Laptop(this.name);

  void turnOn() {
    print("laptop turn on");
  }

  void turnOf() {
    print("laptop turn of");
  }
}

class MacBook implements Laptop {
  @override
  String name;

  MacBook(this.name);

  @override
  void turnOn() {
    print("$name turn on");
  }

  @override
  void turnOf() {
    print("$name turn of");
  }
}
