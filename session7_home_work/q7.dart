/*
Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
 and how many characters (excluding spaces).
*/
import 'dart:io';

void main() {
  print('enter a short sentence');
  String sentence = stdin.readLineSync()!;
  List<String> word = sentence.split(' ');
  int numberOfCharacter = sentence.length - (word.length - 1);
  print('number of word in sentence:${word.length}');
  print('number of character in sentence excluding spaces $numberOfCharacter');
}
