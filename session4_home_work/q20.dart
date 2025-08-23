/*
 Question 20
 Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
 have a parent. Use a switch statement on an area variable (general or restricted) to decide what
 message to print.
*/
void main() {
  int age = 22;
  bool haveParent = true;
  String area = 'general';
  if (age < 18) {
    // is under 18
    area = 'restricted';
    if (haveParent) {
      //is under 18 and have family
      area = 'general';
    }
  }
  switch (area) {
    case 'general':
      print('you allow go any place');
      break;
    case 'restricted':
      print("you don't allow to go any place");
      break;
  }
}
