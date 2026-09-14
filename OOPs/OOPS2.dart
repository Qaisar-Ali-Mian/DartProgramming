// Parameterized Constructor
// NAmed Constructor

void main() {
  // var angle1 = new Angle();

  var angle2 = new Angle(4, 5);
  print(angle2.x);
  print(angle2.y);
}

class Angle {
  final x;
  final y;
  // simple constructor
  // Angle() {
  //   print("constructor");
  // }

  // Parameterized Constructor
  Angle(this.x, this.y) {
    print("parametarized ctr called");
  }
}
