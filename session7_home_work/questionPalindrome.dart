/*
Given a string s, return true if it is a palindrome, or false otherwise.
Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
*/
void main() {
  print(isPalindrome("0P"));
}

bool isPalindrome(String s) {
  bool check = false;
  if (s == " ") return true;
  RegExp nonAlphabetic = RegExp(r'[^a-zA-Z0-9]');
  s = s.replaceAll(nonAlphabetic, '');
  s = s.toLowerCase();
  if (s.length == 1 || s == "") {
    return true;
  }
  List<String> characters = s.split('');
  print('characters $characters');
  List<String> compl = [];
  int length = characters.length;
  String char = '';
  for (int i = length - 1; i >= length / 2; i--) {
    char = characters[i];
    compl.add(char);
  }
  print(compl);
  for (int j = 0; j < compl.length; j++) {
    if (compl[j] != characters[j]) {
      return false;
    }
    check = true;
  }
  return check;
}
