import 'class5.dart';

class SearchTools {
  String linearSearch({required List<int> arr, required int target}) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == target) {
        return "Found ${arr[i]} at index of $i";
      }
    }
    return "Not found!";
  }

  String binarySearch({required List<int> arr, required int target}) {
    int first = 0;
    int last = arr.length - 1;

    while (first <= last) {
      int mid = (first + last) ~/ 2;

      if (arr[mid] == target) {
        return "Found ${arr[mid]} at index of $mid";
      } else if (arr[mid] > target) {
        first = mid + 1;
      } else {
        last = mid - 1;
      }

    }
    return "Not found!";
  }
}

void main() {
  final searchTools = SearchTools();
  final sortingTools = SortingTools();
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  arr = sortingTools.quickSort(arr);
  final result = searchTools.linearSearch(arr: arr, target: 11);
  print(result);
}
