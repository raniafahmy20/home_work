/*
problem solving
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
*/
List<int> twoSum(List<int> nums, int target) {
  List<int> numbers = [];
  int i = 0;
  while (i < nums.length - 1) {
    if (nums[i] + nums[i + 1] == target) {
      numbers.add(i);
      numbers.add(i + 1);
    }
    i++;
  }
  return numbers;
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  print(twoSum(nums, target));
}
