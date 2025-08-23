/*
Question 14
 Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
 scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
 greater than or equal to 40.
*/
void main() {
  List<int?> scores = [40, 60];
  bool isempty = scores.length == 0;
  if (isempty) {
    print('No Scores');
  } else {
    int sum = scores.first! + scores.last!;
    print(sum);
    bool check = sum >= 40;
    print(check);
  }
}
