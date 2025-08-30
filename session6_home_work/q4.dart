/*
Q4
 Create a program with a map of student names to their marks. Print the name of the student with
 the highest mark.
*/
void main() {
  Map<String, num> student = {'maged': 55, 'noha': 30, 'mina': 80};
  num higherMark = 0;
  String name = '';
  student.forEach((key, value) {
    if (value > higherMark) {
      higherMark = value;
      name = key;
    }
  });
  print(name);
}
