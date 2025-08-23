/*
Question 10
 Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
*/
void main() {
  Map<String, String> countryCodes = {'EG': 'Egypt'};
  print(countryCodes['EG']);
  countryCodes['QA'] = 'Qatar';
  print(countryCodes);
  print(countryCodes.length);
  bool checkCountry = countryCodes.containsKey('JO');
  if (!checkCountry) {
    print('Jordan missing');
  }
}
