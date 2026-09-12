/*
Develop a program to calculate the shipping cost based on the destination zone and the weight of the package (you will be provided).

Calculate the shipping cost according to these conditions:

If the destination zone is "XYZ", the shipping cost is $5 per kilogram.
If the destination zone is "ABC", the shipping cost is $7 per kilogram.
If the destination zone is "PQR", the shipping cost is $10 per kilogram.
If the destination zone is not "XYZ", "ABC", or "PQR", display an error message.
*/

void main() {
  String zone = "ABC";
  double weight = 10;

  switch (zone) {
    case "XYZ":
      print("Shipping cost: \$${weight * 5}");

    case "ABC":
      print("Shipping cost: \$${weight * 7}");

    case "PQR":
      print("Shipping cost: \$${weight * 10}");

    default:
      print("Invalid destination zone");
  }
  // we can do this also usig if else
  // and con,t do this using ternary because ternary is for single condition
}
