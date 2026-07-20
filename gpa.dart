import 'input.dart';
 String gradeLetter (int score) {
  if (score >= 70) {
    return "A";
  }
  else if (score >= 60) {
    return "B";
     }   else if (score >= 50) {
     return "C";
    } 
    else if (score >= 45) {
      return "D";
    }
    else if (score >= 40) {
      return "E";
    } else {
      return "F";
    }
 }

 int gradePoint(String gradeLetter) {
switch (gradeLetter) {
  case "A" :
  return 5;
  case "B" :
  return 4;
  case  "C" :
  return 3;
  case "D" :
  return 2;
  case "E" :
  return 1;
  default :
  return 0;
}
  }
  int calculateCreditPoint(int gradePoint, int courseUnit) {
    return gradePoint * courseUnit;
  }
  void main() {
   //String courseCode;
   int courseUnit;
   int score;
   int creditPoint;  
   int totalCreditPoint = 0;
   int totalCourseUnit = 0;
  List <String> coursCode = [];
List <String> gradeLetter = [];
int numOfCourses = int.parse(input("Enter number of courses: "));
for (int i = 0; i < numOfCourses; i++) {
 coursCode = input("Enter course code: ");
 courseUnit = int.parse(input("Enter course unit: "));
 score = int.parse(input("Enter your score: "));

 final gradeL = gradeLetter(score);
 final gradeP = gradePoint(gradeL);
 
creditPoint = calculateCreditPoint(gradeP, courseUnit);
totalCourseUnit += courseUnit;
totalCreditPoint += creditPoint;
}
double gpa = totalCreditPoint / totalCourseUnit;
for (int i = 0; i < coursCode.length; i++) {
  print ("$coursCode[]");
}
for (int i = 0; i < gradeLetter.length; i++) {
  print ("$gradeLetter[]");
}
print("gpa: $gpa");

  }