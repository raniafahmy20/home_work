/*
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
 courses: one with custom duration and one with the default. Print both.
*/
class Course {
  String? title;
  int? duration;
  Course({required String title, int duration = 3}) {
    this.duration = duration;
    this.title = title;
  }
}

void main() {
  Course course1 = Course(duration: 4, title: 'Diploma Flutter');
  Course course2 = Course(title: 'Programimng Language');
  print(
    'the title of course: ${course1.title} and the duration of the course: ${course1.duration}',
  );
  print(
    'the title of course: ${course2.title} and the duration of the course: ${course2.duration}',
  );
}
