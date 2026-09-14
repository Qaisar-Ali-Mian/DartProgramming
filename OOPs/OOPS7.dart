// Abstract class

void main() {
  // Person p1 = Person(); abstract class cant be initiated
}

abstract class Person {
  void canWalk();
  void canSpeak();
  void haveName();
}

class Male extends Person {
  String _name;
  Male(this._name);

  @override
  void canWalk() {
    print("can walk");
  }

  @override
  void canSpeak() {
    print("Yes can speak");
  }

  @override
  void haveName() {
    print(' name $_name');
  }
}
