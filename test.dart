import 'dart:io';
void main() {
    dynamic name;
    dynamic age;
    dynamic nationality;
    dynamic religion;
    dynamic stateOfOrigin;
    dynamic address;
    dynamic occupation;
    dynamic favFood;
    dynamic favColor;
    dynamic hobby;

    print("Enter your name:");
    name = stdin.readLineSync()!;

    print("Enter your age:");
    age = int.parse(stdin.readLineSync()!);

    print("Enter your nationality:");
    nationality = stdin.readLineSync()!;

    print("Enter your religion:");
    religion = stdin.readLineSync()!;

    print("Enter your state of origin:");
    stateOfOrigin = stdin.readLineSync()!;

    print("Enter your address:");
    address = stdin.readLineSync()!;

    print("Enter your occupation:");
    occupation = stdin.readLineSync()!;

    print("Enter your favourite food:");
    favFood = stdin.readLineSync()!;

    print("Enter your favourite color:");
    favColor = stdin.readLineSync()!;

    print("Enter your hobby:");
    hobby = stdin.readLineSync()!;




    int year = DateTime.now().year;
    int day = DateTime.now().day;
    int month = DateTime.now().month;
    String todaysDate = "${day}st/$month/$year";


    String paragraph;
    paragraph = """Hello, my name is $name. I am $age years old. I am a $nationality and I practice $religion.
     I am from $stateOfOrigin but I live in $address. I am a $occupation. 
     My fav food is $favFood and my fav color is $favColor. I love $hobby when I am free""";


    String ayoParagraph = "\tHello, my name is $name. I am ${age + 5} years old. I am a ${nationality.toUpperCase()} \and I practice $religion. \nI am from $stateOfOrigin but I live in $address. \nToday's date is $todaysDate";

    // Club game

    if (age < 25) {
      print("You are not allowed in this club");
    } else {
      print("Welcome, $name");
      print(paragraph);
                        
}