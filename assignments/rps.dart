import 'dart:math';
import 'input.dart';
String Winner(String userChoice, String ComputerChoice) {
  if (userChoice == 'rock' && ComputerChoice == 'scissors') {
    return 'user';
  }
  else if (ComputerChoice == 'rock' && userChoice  == 'scissors') {
    return 'computer';
  }
  else if (userChoice == 'paper' && ComputerChoice == 'rock') {
    return 'user';
  }
  else if (ComputerChoice == 'paper' && userChoice == 'rock') {
    return 'computer';
  }
  else if (userChoice == 'scissors' && ComputerChoice == 'paper') {
    return 'user';
  }
  else if (ComputerChoice == 'scissors' && userChoice == 'paper') {
    return 'computer';
  }
  return '';
}


void main () {
  int userWins = 0;
  int computerWins  = 0;
List<String> choices = [ 'rock', 'paper', 'scissors'];
  final username = input("Enter your name: ");
  
  while (userWins < 10 || computerWins < 10) {
    final user = input("Enter your choice (rock, paper, scissors): ");
    final userChoice = user.toLowerCase();
   if (userChoice != "rock" && userChoice != "paper" && userChoice != "scissors") {
        print ('Enter correct choice');
        continue;
  }
    final computerChoice = choices[Random().nextInt(choices.length)];
 
    print("Computer chose: $computerChoice");
 
    final winner = Winner(userChoice, computerChoice);
  
    if (winner == 'user') {
      userWins++;
      print("$username wins this round!");
    } else if (winner == 'computer') {
      computerWins++;
      print("Computer wins this round!");
    } 
    else {
      print("It's a tie!");
    }
  
    
    print("\n");
    if (userWins == 10 || computerWins == 10) {
      break;
    }
  }

  if (userWins == 10) {
    print("Hurray!! $username wins the game!") ;
    print("Score: $username - $userWins, Computer - $computerWins");
  } else {
    print("Computer wins the game!");
    print("Score: $username - $userWins, Computer - $computerWins");
  }
}