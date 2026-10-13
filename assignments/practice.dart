class Cars {
  String name;
  int year;
  String? brand;

  Cars(this.name, this.year, this.brand);
  @override
  String toString() => "cars details: name:$name, year:$year, brand:$brand";
}

class motors {
  String brand;
  String color;
  int year;
  motors.hik() : brand = "Hik Benz", color = "Red", year = 2028;

  @override
  String toString() => "motors: brand = $brand : color = $color : year = $year";
}

void main() {
  motors hik = motors.hik();
  Cars black = Cars('Benz', 2025, 'Hilux');
  // print(black);
  print(hik);
}

