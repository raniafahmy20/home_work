/*
Question 16
 Write a Dart program that evaluates three integer variables with different logical and comparison
 expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
 one of the expressions.
*/
void main() {
  int x = 90;
  int y = 20;
  int z = 40;
  bool xisHigher = (x > z) && (x > y);
  bool yisHigher = (y > x) && (y > z);
  bool zisHigher = (z > x) && (z > y);
  // rule is x is higher || y is higher
  if (xisHigher || yisHigher) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
