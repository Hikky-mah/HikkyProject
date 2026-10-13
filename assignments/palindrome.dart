import 'input.dart';

bool palindrome (String s){
  String newS = s.toLowerCase().split(' ').join();
  int i = 0;
  int r = newS.length - 1;
  while(1<=r){
    if(newS[i] != newS[r]){
      return false;
    }
    i++;
    r--;
  }
  return true;
}

void main(){
  String word = input("Enter a word or sentence: ");
  print(palindrome(word));
}