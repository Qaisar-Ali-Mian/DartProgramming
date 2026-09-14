// Parameterized Constructor
// NAmed Constructor

// Named constructor
// we can defined diffrent constructor defined and have diffrent name
void main() {
  // simple constructer will called;
  var a1 = Angle(77, 99);

  var a2 = Angle.valueSet(3, 4);
  print(a2.x);
  print(a2.y);

  var a3 = Angle.values(67, 34);
  print(a3.x);
  print(a3.y);
}

class Angle {
  double x = 0;
  double y = 0;

  Angle(this.x, this.y);

  Angle.valueSet(double x, double y) : this.x = x, this.y = y {
    print("valueSet ctr called");
  }

  Angle.values(double x, double y) {
    this.x = x;
    this.y = y;
    print("values cstr called");
  }
}
