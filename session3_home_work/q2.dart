/*
Exercise 2:
 2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
 b) Print a sentence that includes all values using string interpolation.
 c) Change weight to a different value and print only the updated one
*/
void main() {
  String country = 'cairo';
  int year = 2003;
  double weight = 60;
  bool likesCoding = true;
  print(
      'Country:$country \t Year:$year \tWeight:$weight \t LikesCoding:$likesCoding');
  weight = 62;
  print('Update Weight:$weight');
}
