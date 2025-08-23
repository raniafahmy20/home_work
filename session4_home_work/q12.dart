/*
 Question 12
 Create a Dart program that safely reads a phone number from a map. If the phone number is null,
 print a default message. Then update the phone number and print its length.
*/
void main() {
  Map<String, String> phones = {
    'mina': '012345544',
    'maged': '015642234',
    'nadia': ' '
  };
  if (phones.containsValue(' ')) {
    print('numper of phone is missing');
    String name = phones.keys.firstWhere((k) => phones[k] == ' ');
    phones.update(name, (value) => '01112344');
    print(phones[name]!.length);
  }
}
