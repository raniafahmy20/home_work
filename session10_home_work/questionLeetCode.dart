/*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

Example 2:
Input: s = "rat", t = "car"
Output: false
 */
void main() {
  print(isAnagram('anagram', 'nagaram'));
  print(isAnagram('rat', 'car'));
  print(isAnagram('ab', 'a'));
  print(isAnagram('aa', 'bb'));
  print(isAnagram('aacc', 'ccac'));
  print(isAnagram("anagtam", "nbgbram"));
}

bool isAnagram(String s, String t) {
  bool check = false;
  if (s.length != t.length) {
    return false;
  }

  Map<String, int> countOfCharacatersT = {};
  Map<String, int> countOfCharacatersS = {};
  List<String> charactersOfS = s.split('');
  List<String> charactersOfT = t.split('');
  for (int i = 0; i < charactersOfS.length; i++) {
    if (countOfCharacatersS.containsKey(charactersOfS[i])) {
      countOfCharacatersS[charactersOfS[i]] =
          countOfCharacatersS[charactersOfS[i]]! + 1;
    } else {
      countOfCharacatersS.addAll({charactersOfS[i]: 1});
    }
  }
  for (int i = 0; i < charactersOfT.length; i++) {
    if (countOfCharacatersT.containsKey(charactersOfT[i])) {
      countOfCharacatersT[charactersOfT[i]] =
          countOfCharacatersT[charactersOfT[i]]! + 1;
    } else {
      countOfCharacatersT.addAll({charactersOfT[i]: 1});
    }
  }
  print(countOfCharacatersS);
  print(countOfCharacatersT);
  bool finalCheck = true;
  countOfCharacatersS.forEach((key, value) {
    if (countOfCharacatersT.containsKey(key)) {
      if (countOfCharacatersT[key] == value) {
        check = true;
      } else {
        finalCheck = false;
      }
    } else {
      check = false;
      finalCheck = false;
    }
  });

  return finalCheck;
}
