/* Q3
 Given an array of integers nums sorted in ascending order, and an integer target,
 write a function to search target in nums.
 - If target exists, return its index. Otherwise, return -1.
 - The algorithm must run in O(log n) time complexity.
 Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
 Explanation: 9 exists in nums and its index is 4.
 - Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
 Explanation: 2 does not exist in nums, so return -1.
 */
int search(List<int> nums, int target, int low, int hight) {
  int middle = 0;
  while (low <= hight) {
    middle = ((low + hight) / 2).toInt();
    if (nums[middle] == target) {
      return middle;
    }
    if (nums[middle] > target) {
      hight = middle - 1;
    } else {
      low = middle + 1;
    }
  }
  return -1;
}

void main() {
  print(search([-1, 0, 3, 5, 9, 12], 4, 0, 6));
}
