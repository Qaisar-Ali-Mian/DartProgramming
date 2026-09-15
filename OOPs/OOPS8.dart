//inheritance
// base class -> whihc property is going to be inhereted
// derived class -> which is used to inhert the properties of base class
// fou types mainly
// single inheritance
//  multiple inheiritance dart doesnt support this type of inherita ce
// multiple inheritance

// hirarchical inheritance
main() {
  var sparrow = Sparrow();
  var parrot = Parrot();

  print("sparrow");
  print(sparrow.birdName());
  print(sparrow.catName());

  print("Parrot");
  print(parrot.birdName());
  print(parrot.catName());
}

class Bird {
  String catName() {
    return "bird";
  }
}

class Sparrow extends Bird {
  String birdName() {
    return "sparrow";
  }
}

class Parrot extends Bird {
  String birdName() {
    return "Parrot";
  }
}
