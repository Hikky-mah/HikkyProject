import 'dart:io';

dynamic input(String title) {
    stdout.write(title);
    dynamic user_input = stdin.readLineSync();
    return user_input;
}
