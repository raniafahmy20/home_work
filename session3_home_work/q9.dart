void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'mina', 'grade': 4},
    {'name': 'maged', 'grade': 4.8}
  ];
  print(students[1]['grade']);
  double add = students[0]['grade'] + students[1]['grade'];
  print(add / 2);
}
