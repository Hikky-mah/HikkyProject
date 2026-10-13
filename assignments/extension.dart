import 'input.dart';
extension intExtension on int {
  bool get evenNum => this % 2 == 0;
  bool get oddNum => this % 2 != 0;
}

void main(){
  int n = int.parse(input("Enter a number: "));
  print(n.oddNum);
}