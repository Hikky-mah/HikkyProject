
import 'input.dart';

void main() {
  final user = input("Enter a number: ");

  // Getting factorial result of 5
  BigInt result = factorial(int.parse(user));
  // Printing the final result
  print(result);
int a = int.parse(input("Enter the value of a: "));
int b = int.parse(input("Enter the value of b: "));
  BigInt permutations = nPr(a, b);
  print('Permutations: $permutations');

  BigInt combination = nCr(a,b );
  print('Combination: $combination');
}

// Function to calculate factorial of a number
BigInt factorial(int n) {
  if (n <= 1) return BigInt.from(1);

  return BigInt.from(n) * factorial(n - 1); 
}
 BigInt nPr(int n, int r) {
  return factorial(n) ~/ factorial(n - r);
 }
 
  BigInt nCr(int n, int r) {
    return factorial(n) ~/ (factorial(r) * factorial(n-r));
 }

