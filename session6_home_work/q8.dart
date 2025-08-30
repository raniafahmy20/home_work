/*
Q8
 Create a program with a nullable integer called bonus. If it has a value greater than 50, print 'Big
 bonus'. If it has a value but less than or equal to 50, print 'Small bonus'. If it is null, print 'No bonus'.
*/
void main() {
  int? bonus;
  if ((bonus ?? 0) > 50) {
    print('Big bonus');
  }
  if ((bonus ?? 100) <= 50) {
    print('Small bonus');
  }
  if (bonus == null) {
    print('No bonus');
  }
}
