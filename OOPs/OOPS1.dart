//instanve vs class variable
void main() {
  var a = Vehical();
  var b = Vehical();
  a.x = 1;
  a.y = 2;

  b.x = 3;
  b.y = 4;
  // a have x,y its own;
  // b have x,y its own

  print(a.x);
  print(b.x);

  print(a.y);
  print(b.y);

  print("Counter");
  print(Vehical.counter);
}

//class variable belongs to class not to object
class Vehical {
  //instance variable
  int? x;
  int? y;
  // constructor
  Vehical() {
    counter++;
  }

  // class variable(Keyword staitc);

  static int counter = 0;
}
