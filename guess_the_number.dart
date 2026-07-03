import 'dart:math';
import 'input.dart';

void main() {
  int number = randomNumber();
  int? guess;
  int attempts = 0;

  while (guess != number) {
    attempts++;
    guess = int.tryParse(input("Guess the number: ") ?? '');

    if (guess == null) {
      print("Enter a valid number!");
      continue;
    }
    if (guess < number)
      print("Guess is lower!");
    else if (guess > number)
      print("Guess is greater!");
    else {
      print("correct!!!😍😍😍");
      print("You took $attempts attempts!!!");
    }
    
  }
}

int randomNumber() {
  final random = Random();
  final int number = random.nextInt(100) + 1;
  return number;
}
