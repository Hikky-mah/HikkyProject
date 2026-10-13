import 'dart:convert';

import 'input.dart';
void main () {
  List<dynamic> students = jsonDecode((input("Enter List of Students: ")));
  List<Map<String, dynamic>> listOfStudents = students.map((e) => e as Map<String, dynamic>,).toList();
  Map<String, List<String>> groupedByClass = {};
  for (var student in listOfStudents) {
    String studentName = student["Name"];
    String studentClass = student["class"];

    groupedByClass.putIfAbsent(studentClass, () => []).add(studentName);
  }
  groupedByClass.forEach((key, value) => print("$key: $value\n"),);
}