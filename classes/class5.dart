class SortingTools {
  const SortingTools();

  List<int> bubbleSort(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          // Swap arr[j] and arr[j+1]
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    return arr;
  }

  List<int> insertionSort(List<int> arr) {
    int n = arr.length;
    for (int i = 1; i < n; i++) {
      int key = arr[i];
      int j = i - 1;

      // Move elements of arr[0..i-1], that are greater than key,
      // to one position ahead of their current position
      while (j >= 0 && arr[j] > key) {
        arr[j + 1] = arr[j];
        j = j - 1;
      }
      arr[j + 1] = key;
    }
    return arr;
  }

  List<int> mergeSort(List<int> arr) {
    if (arr.length <= 1) {
      return arr;
    }

    int mid = arr.length ~/ 2;
    List<int> left = mergeSort(arr.sublist(0, mid));
    List<int> right = mergeSort(arr.sublist(mid));

    return _merge(left, right);
  }

  List<int> _merge(List<int> left, List<int> right) {
    List<int> temp = [];
    int i = 0, j = 0;

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        temp.add(left[i]);
        i++;
      } else {
        temp.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      temp.add(left[i]);
      i++;
    }

    while (j < right.length) {
      temp.add(right[j]);
      j++;
    }

    return temp;
  }

  List<int> quickSort(List<int> arr) {
    if (arr.length <= 1) return arr;

    int pivot = arr[arr.length ~/ 2];

    List<int> less = [];
    List<int> equal = [];
    List<int> greater = [];

    for (int element in arr) {
      if (element < pivot) {
        less.add(element);
      } else if (element == pivot) {
        equal.add(element);
      } else {
        greater.add(element);
      }
    }
    return [...quickSort(less), ...equal, ...quickSort(greater)];
  }
}

void main() {
  final sortingTools = SortingTools();
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  print("Original array: $arr");
  List<int> sortedArr = sortingTools.mergeSort(arr);
  print("Sorted array: $sortedArr");
}
