/*
 Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
 a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
 conditions.
*/
void main() {
  Map<String, String> environment = {
    'path': r'C:\tools\dart-sdk\bin',
    'OneDrive': r'C:\Users\aaaaa\OneDrive',
    'TEMP': ' '
  };
  if (environment.containsValue(' ')) {
    String name = environment.keys.firstWhere((k) => environment[k] == ' ');
    environment.update(name, (value) => r'%USERPROFILE%\AppData\Local\Temp');

    print(environment.values.toString().toUpperCase());

    if (environment.length > 2) {
      print('Prod ready');
    } else {
      print('Non-Prod');
    }
  }
}
