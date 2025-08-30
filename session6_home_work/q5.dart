/*
Q5
 Create a program with a boolean isMember = false and an integer points = 120. If isMember is true
 and points >= 100, print 'Eligible for reward'. Otherwise, print 'Not eligible'.
*/
void main() {
  bool isMember = false;
  int points = 120;
  bool check = (isMember == true) && (points >= 100);
  if (check) {
    print('Eligible for reward');
  } else {
    print('Not eligible');
  }
}
