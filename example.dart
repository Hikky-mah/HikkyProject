

import 'input.dart';

void main() {
  final user = input("Enter a number: ");

  // Getting factorial result of 5
  BigInt result = factorial(int.parse(user));


  // Printing the final result
  print(result);


}


// Function to calculate factorial of a number
BigInt factorial(int n) {
  if (n <= 1) return BigInt.from(1);

  return BigInt.from(n) * factorial(n - 1);
}


