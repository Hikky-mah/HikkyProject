void main() {
    String? name = "Adejumoke";
    int? age = 23;
    String? nationality = "nigerian";
    String? religion = "islam";
    String? stateOfOrigin = "oyo state";
    String? address = "oke ero kwara";
    String? occupation = "government pikin";
    String? favFood = "eggs";
    String? favColor = "custard blue";
    String? hobby = "watching tvd";


    int year = DateTime.now().year;
    int day = DateTime.now().day;
    int month = DateTime.now().month;
    String todaysDate = "${day}st/$month/$year";


    String? paragraph;
    paragraph = """Hello, my name is $name. I am $age years old. I am a $nationality and I practice $religion.
     I am from $stateOfOrigin but I live in $address. I am a $occupation. 
     My fav food is $favFood and my fav color is $favColor. I love $hobby when I am free""";


    String ayoParagraph = "\tHello, my name is $name. I am ${age + 5} years old. I am a ${nationality.toUpperCase()} \and I practice $religion. \nI am from $stateOfOrigin but I live in $address. \nToday's date is $todaysDate";

    // Club game

    if (age < 25) {
      print("You are not allowed in this club");
    } else {
      print("Welcome, $name");
    }
                        
}