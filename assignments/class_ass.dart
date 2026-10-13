

class Functions {
  List<int> primeNum(int n) {
    List<int> result = [];
    for (int i = 2; i <= n; i++) {
      // print(i);
      bool check = true;
      for (int j = 2; j * j <= i; j++) {
        //print(j);
        if (i % j == 0) {
          check = false;
          break;
        }
      }
      if (check) {
        result.add(i);
      }
    }
    return result;
  }

  num subtract(num a, num b) {
    num result = (a - b);
    return result;
  }

  String division(num a, num b) {
    num result = (a / b);
    return result.toStringAsFixed(2);
  }

  num add(List<num> addNumbers) {
    num result = 0;
    for (int i = 0; i < addNumbers.length; i++) {
      result += addNumbers[i];
    }
    return result;
  }

  num multiply(List<num> numbers) {
    num result = 1;
    for (int i = 0; i < numbers.length; i++) {
      result *= numbers[i];
    }
    return result;
  }

  bool isPrime(int n) {
    for (int i = 2; i < n; i++) {
      if (n <= 1) {
        return false;
      } else if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  List<int> sort(List<int> arrays, {bool DSC = false, int? limit}) {
    arrays.sort();
    if (DSC == true) {
      List<int> result = [];
      for (int i = arrays.length - 1; i >= 0; i--) {
        result.add(arrays[i]);
      }
      return result;
    }
    return arrays;
  }
}
  void main() {
     final function = Functions();
    List<int> array = [23, 12, 34, 78, 6];
     List<int> result = function.sort(array, DSC:false, limit:2);
    print("Sorted array: $result");
  }
  //int n = int.parse(input("Enter a number: "));
  //print(isPrime(n));
  // print(primeNum(30));
  //print(multiply([1, 4]));
  // print(division(5.8, 2));

