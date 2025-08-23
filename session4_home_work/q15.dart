/*
Question 15
 Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
 '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
 safety where needed.
*/
void main() {
  Map<String?, String?> router = {
    'prod': '/products',
    'prof': '/profile',
    'other': '/other '
  };
  String prod = router['prod']!;
  String prof = router['prof']!;
  String other = router['other']!;
  String rout = prod;
  switch (other) {
    case '/products':
      print('print prodcts page');
      break;
    case '/profile':
      print('print profile page');
    case '/other ':
      print(' another page');
      break;
  }
}
