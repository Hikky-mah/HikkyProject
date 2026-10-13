import 'input.dart';
void main () {
  String name;
  dynamic secret = 8;
  int? guess; 

while (guess != secret) {
  name = input("Enter your name: ");
  guess = int.tryParse(input("Your guess: "));

  if (guess == secret) {
    print("WINNER $name");
  } else if (guess != null && guess < secret) {
    print ("guess is lower");
  } else if (guess != null && guess > secret) {
    print ("guess is greater");
  }
} 

  }

  


