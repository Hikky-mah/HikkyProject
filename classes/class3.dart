// ignore_for_file: unused_import, unused_local_variable

import 'dart:async';

import '../oop/input.dart';

void main() {
  bool islogging = true;
  try {
    // int x = input("Enter number: ");
    // int y = 5;
    // print(x / y);

    final result = divideNumbers(10, 0);
    print(result);
  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  }
  catch (e) {
    print("Something went wrong! $e");
  } finally {
    islogging = false;
  }


  
}



double divideNumbers(int a, int b) {
  if (b == 0) {
    throw ArgumentError("You can't divide by zero!");
  }

  return a / b;
}


class InsufficientFundsException implements Exception {
  final String message;
  InsufficientFundsException(this.message);

  @override
  String toString() => 'Error Occured! $message';

}