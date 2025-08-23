/*
Question 13
 Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
 statement to print a message for each grade.
*/
void main() {
  // max mark is 100
  num mark = 93;
  bool a = mark >= 90;
  bool b = 90 < mark || mark >= 80;
  bool c = 80 < mark || mark >= 70;
  bool d = mark >= 60;
  String grade = 'F';
  if (a) {
    grade = 'A';
  } else if (b) {
    grade = 'B';
  } else if (c) {
    grade = 'C';
  } else if (d) {
    grade = 'D';
  } else {
    grade = 'unKnown';
  }
  switch (grade) {
    case 'A':
      print('grade is A');
      break;
    case 'B':
      print('grade is B');
      break;
    case 'C':
      print('grade is C');
      break;
    case 'D':
      print('grade is D');
      break;
    default:
      print('Unvalid GPA');
  }
}
