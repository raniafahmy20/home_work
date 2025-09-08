/*
Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
 set its initial values using a constructor. - Then change the age of the object and print the updated
 details.
*/
void main() {
  Person person = Person(name: 'Dalia', age: 30);
  print('age of person: ${person.age}');
  person.age = 32;
  print('age of person after update: ${person.age}');
}

class Person {
  String? name;
  int? age;
  Person({required String name, required int age}) {
    this.age = age;
    this.name = name;
  }
}
