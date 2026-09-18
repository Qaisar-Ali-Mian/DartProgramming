void main() {
  // Task 1: Print numbers from 1 to 10
  print("Task 1:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Task 2: Print even numbers from 1 to 20
  print("\nTask 2:");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // Task 3: Print multiplication table of 5
  print("\nTask 3:");
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }

  // Task 4: Calculate sum from 1 to 100
  print("\nTask 4:");

  int sum = 0;

  for (int i = 1; i <= 100; i++) {
    sum = sum + i;
  }

  print("Sum = $sum");

  // Task 5: Print numbers from 10 to 1
  print("\nTask 5:");

  for (int i = 10; i >= 1; i--) {
    print(i);
  }
}
