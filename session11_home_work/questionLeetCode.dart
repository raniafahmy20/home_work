/*
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space.

Example 1:
Input: nums = [2,2,1]
Output: 1

Example 2:
Input: nums = [4,1,2,1,2]
Output: 4

Example 3:
Input: nums = [1]
Output: 1

*/
void main() {
  print(singleNumber([2, 3, 2, 3, 4]));
}

int singleNumber(List<int> nums) {
  List<int> numbers = [];
  int number = -1;
  for (int i = 0; i < nums.length; i++) {
    if (numbers.contains(nums[i])) {
      numbers.remove(nums[i]);
    } else {
      numbers.add(nums[i]);
    }
  }
  number = numbers.first;
  return number;
}
