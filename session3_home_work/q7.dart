void main() {
  List<int> numbers0 = [4, 4, 5, 6, 6, 7];
  Set<int> numbers = numbers0.toSet();
  print(numbers);
  numbers.add(8);
  print(numbers);
  numbers.remove(numbers.first);
  print(numbers);
  print(numbers.contains(2));
}
