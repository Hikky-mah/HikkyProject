class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> nums3 = [...nums1, ...nums2];
    nums3.sort();
    print(nums3);
    int n = nums3.length;
    print(n);
    //double mid = nums3.length / 2;
    //print(mid);

    if (n % 2 == 0) {
      return (nums3[n ~/ 2] + nums3[n ~/ 2 - 1]) / 2;
    } else
      return nums3[n ~/ 2].toDouble();
  }
}

void main() {
  final function = Solution();
  List<int> nums1 = [9, 3];
  List<int> nums2 = [2, 1];
  double result = function.findMedianSortedArrays(nums1, nums2);
  print(result);
}
