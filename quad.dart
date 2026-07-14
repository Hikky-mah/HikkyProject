
import 'dart:math';
import 'input.dart';
List<double> quadraticEquation (int a, int b, int c) {
  int discriminant =  (b * b) - (4 * a * c); 
  if (discriminant < 0) {
  final absoluteNum = discriminant.abs();
double sqrtDiscriminant = sqrt(absoluteNum);
  double X = (-b + (-1 * sqrtDiscriminant))/ (2 * a); 
  double X2 = (-b - (-1 * sqrtDiscriminant))/ (2 * a);

  double x1 = double.parse(X.toStringAsFixed(2));
  double x2 = double.parse(X2.toStringAsFixed(2));
  return [x1, x2];
  }
 
double sqrtDiscriminant = sqrt(discriminant);
  double X = (-b + sqrtDiscriminant)/ (2 * a); 
  double X2 = (-b - sqrtDiscriminant)/ (2 * a);

  double x1 = double.parse(X.toStringAsFixed(2));
  double x2 = double.parse(X2.toStringAsFixed(2));
 return [x1, x2];
}

void main() {
 int a = int.parse(input("Enter the value of a: "));
 int b = int.parse(input("Enter th value of b: "));
 int c = int.parse(input("Enter the value of c: "));
   

  List<double> solution = quadraticEquation(a, b, c);
  print ("$solution");
}

