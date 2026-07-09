import 'dart:math';

import 'input.dart';

void main() {
  int age = randomNumber();

  int? guess;

  while (guess != age) {
      guess = int.tryParse(input("Guess my Age: ") ?? "");

      if (guess == null) {
          print("Enter a valid number!");
          continue;
      }

      if (guess < age) print("Guess is lower!");
      else if (guess > age) print("Guess is greater!");
      else print("Correct!!🎉🎉🎈");
  }



}


int randomNumber() {

  final random = Random();

  final int number = random.nextInt(100) + 15;
  return number;
}