/*
Q12
 Create a function that takes named parameters firstName, lastName, and an optional named
 parameter age. Print the full name and, if age is provided, also print 'Age: X'.
*/
void main() {
  person(firstName: 'noha', lastName: 'maged');
  person(firstName: 'rania', lastName: 'fahmy', age: 22);
}

void person({required String firstName, required String lastName, int? age}) {
  print('Fullname: $firstName' + ' ' + '$lastName');
  if (age != null) {
    print('Age:$age');
  }
}
