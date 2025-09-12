/*
 Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
 print the total count of unique words.
*/
import 'dart:io';

void main() {
  print('enter sentence');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  Map<String, int> wordsCountAppears = {};
  int countAppears = 1;
  for (String item in words) {
    if (wordsCountAppears.containsKey(item)) {
      wordsCountAppears[item] = wordsCountAppears[item]! + 1;
    } else {
      wordsCountAppears.addAll({item: countAppears});
    }
  }
  words.clear();
  wordsCountAppears.forEach((key, value) {
    if (value == 1) {
      words.add(key);
    }
  });

  print(words);
}
