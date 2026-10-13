import 'input.dart';

void fibonacci(int n) {
  int a = 0;
  int b = 1;
   
  for (int i = 0; i <= n; i++) {
    print(a);
    int c = a + b;
   

    a = b;
    b = c;
    
  }
}

void main() {
  int n = int.parse(input("Enter a number: "));
  fibonacci(n);
}
