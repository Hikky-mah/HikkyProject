import 'input.dart';

List<String> fizzBuzz(int n) {
  List<String> result = [];

  for (int i = 1; i <= n; i++) {
    if  (i % 3 == 0 && i % 5 == 0) {
     result.add("FizzBuzz");
    } else if (i % 5 == 0) {
      result.add("Buzz");
    } else if (i % 3 == 0) {
      result.add("Fizz");
    } else {
     result.add(i.toString());
    }
  }
  return result;
}

void main() {
  int n = int.parse(input("Enter a number not less than 1: "));
  List<String> result = fizzBuzz(n);
  print(result);
}
