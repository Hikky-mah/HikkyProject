
import 'dart:math';
List<double>quadraticEquation (int a, int b, int c) {
  int discriminant = (b * b) - (4 * a * c); 
  if (discriminant < 0) {
    return [0];
  }
  double sqrtDiscriminant = sqrt(discriminant);
  double X = (-b + sqrtDiscriminant)/ (2 * a); 
  double X2 = (-b - sqrtDiscriminant)/ (2 * a);

  double x1 = double.parse(X.toStringAsFixed(2));
  double x2 = double.parse(X2.toStringAsFixed(2));
  
 return [x1, x2];
 
 
}
void main() {
  List<double> solution = quadraticEquation(2, 6, 3);
  print ("$solution");
}

