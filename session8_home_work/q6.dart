/*
Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
Then print the shortest word and the longest word from the sentence.
*/
import 'dart:io';

void main() {
  print('enter your sentence');
  String sentence = stdin.readLineSync()!;
  List<String> word = sentence.split(' ');
  print('number of word in sentence:${word.length}');
  Map<String, int> numberOfCharacterInWord = {};
  print(word);
  for (String item in word) {
    numberOfCharacterInWord[item] = item.length;
  }
  print(numberOfCharacterInWord);
  int largest = 0;
  String largestWord = '';
  int shortest = 10000;
  String shortestWord = '';
  numberOfCharacterInWord.forEach((key, value) {
    if (value > largest) {
      largest = value;
      largestWord = key;
    }
    if (value < shortest) {
      shortest = value;
      shortestWord = key;
    }
  });
  print('largest word in sentence:$largestWord');
  print('shortest word in sentence:$shortestWord');
}
