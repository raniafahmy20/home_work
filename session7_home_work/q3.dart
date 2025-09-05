/*
Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
 count how many vowels it has.
*/
import 'dart:io';

void main() {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  print('enter the word');
  String word = stdin.readLineSync()!;
  List<String> wordList = word.split('');
  String reversalWord = '';
  for (int i = wordList.length - 1; i >= 0; i--) {
    reversalWord += wordList[i];
  }
  print('the reversal word is $reversalWord');
  int sum = 0;
  wordList.forEach((String item) {
    if (vowels.contains(item)) {
      sum++;
    }
  });
  print('the number of vowels in the word : $sum');
}
