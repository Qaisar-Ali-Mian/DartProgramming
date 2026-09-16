import 'classes.dart';

void main() {
  //list -> order collection of object(order important)
  // makrs -> 10,12,14,15

  // List l = [10, 12, 14, 15];
  // print(l);

  // //indexing
  // print(l[0]);
  // print(l[3]);

  // List l1 = [1, 2, "qaisar", true];
  // print(l1[2]);
  // // the above list is dynamic
  // // to avoid this like you want a list of interger only then

  // List<int> l2 = [1, 2, 3, 4];
  // print(l2);
  // l2[1] = 1000;
  // print(l2);
  // // in l2 you cant store oother data types except int

  // Anything<String, int> a1 = Anything("qaisar", 21);
  // a1.displayInfo();

  List<Anything<String, int>> listOfAnythings = [
    Anything("Qaisar", 21),
    Anything("Xyz", 22),
    Anything("fahad", 20),
  ];
  print(listOfAnythings[0]);
  print(listOfAnythings[1]);
  print(listOfAnythings[2]);

  listOfAnythings.add(Anything('maaz', 20));
  listOfAnythings.add(Anything("rashid", 24));
  print(listOfAnythings);

  listOfAnythings.insert(0, Anything("faisal", 25));
  print(listOfAnythings);

  // listOfAnythings.remove(value);

  // -------------------------
  List<Anything<String, int>> newList = [];
  for (Anything<String, int> obj in listOfAnythings) {
    if (obj.age > 21) {
      newList.add(obj);
    }
  }

  print("newlist");
  print(newList);

  // another method using where

  final listWhere = (listOfAnythings.where((obj) => obj.age > 21)).toList();
  print("ListWhere");
  print(listWhere);
  print(listWhere.runtimeType);
}

// genric class

class Anything<T, T1> {
  T name;
  T1 age;

  Anything(this.name, this.age);

  void displayInfo() {
    print("name $name");
    print("age $age");
  }

  @override
  String toString() => "Name: $name";
}
