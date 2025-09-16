/* Q6
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the same type.
 Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → valid 
*/
import 'dart:io';

void main() {
  print(isValid('()'));
  print(isValid('()[]{}'));
  print(isValid('(]'));
  print(isValid('([)]'));
  print(isValid('{[]}'));
  print(isValid('{[(]}'));
}

bool isValid(String s) {
  List<String> bracts = s.split('');
  List<String> bractsList = [];
  Map<String, String> bractscomplete = {'(': ')', '{': '}', '[': ']'};
  if (!bractscomplete.containsKey(bracts.first)) {
    return false;
  }
  for (int i = 0; i < bracts.length; i++) {
    if (bractscomplete.containsKey(bracts[i])) {
      bractsList.add(bracts[i]);
    } else {
      if (bractscomplete[bractsList.last] == bracts[i]) {
        bractsList.remove(bractsList.last);
      }
    }
  }
  if (bractsList.length == 0) {
    return true;
  } else {
    return false;
  }
}
