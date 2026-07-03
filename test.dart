import 'input.dart';

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
    
     while (name == null || name.toString().trim().isEmpty ||
     age == null || 
     nationality == null ||  nationality.toString().trim().isEmpty ||
     religion == null || religion.toString().trim().isEmpty || 
     stateOfOrigin == null || stateOfOrigin.toString().trim().isEmpty || 
     address == null || address.toString().trim().isEmpty || 
     occupation == null ||  occupation.toString().trim().isEmpty ||
     favFood == null ||  favFood.toString().trim().isEmpty || 
     favColor == null || favColor.toString().trim().isEmpty ||
     hobby == null || hobby.toString().trim().isEmpty) {

     name = input("Enter your name: ");

     age = int.tryParse(input("Enter your age: ")) ;

     nationality = input("Enter your nationality: ");

     religion = input("Enter your religion: ");

     stateOfOrigin = input("Enter your state of origin: ");

     address = input("Enter your address: ");

     occupation = input("Enter your occupation: ");

     favFood = input("Enter your favourite food: ");

     favColor = input("Enter your favourite color: ");

     hobby = input("Enter your hobby: ");

     if (name == null || age == null || nationality == null || religion == null || stateOfOrigin == null || address == null || occupation == null || favFood == null || favColor == null || hobby == null) print("All fields are required pookie!!!");
    }


    int year = DateTime.now().year;
    int day = DateTime.now().day;
    int month = DateTime.now().month;
    String todaysDate = "${day}/$month/$year";


  String paragraph;
   paragraph = """Hello, my name is $name. I am $age years old. I am a $nationality and I practice $religion.
     I am from $stateOfOrigin but I live in $address. I am a $occupation. 
     My fav food is $favFood and my fav color is $favColor. I love $hobby when I am free""";

     //Club game

    if (nationality == "Nigerian") {
      print("You are not allowed in this club");
    } else {
      print("Welcome✌️, $name");
      print(paragraph);
      print("Today's date is $todaysDate");
    }
                        
}