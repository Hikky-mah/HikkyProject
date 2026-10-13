import 'input.dart';


void main() {
  String word = input("Enter a word: ");

  int result = firstUniqueCharacter(word);
  print("Index of first unique character: $result");
}



int firstUniqueCharacter(String s) {
  String newS = s.split(' ').join().toLowerCase();
  // swiss
  Map<String, int> frequency = {};

  // for (int i = 0; i < newS.length; i++) {
  //   String char = newS[i];
  //   frequency[char] = (frequency[char] ?? 0) + 1;
  // }

  newS.codeUnits.forEach((codeUnit) {
    String char = String.fromCharCode(codeUnit);
    frequency[char] = (frequency[char] ?? 0) + 1;
  });

  for (int i = 0; i < newS.length; i++) {
    if (frequency[newS[i]] == 1) {
      return i;
    }
  }


  return -1;
}