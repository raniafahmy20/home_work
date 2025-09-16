/* Q7
 Ask the user to input a list of integers.
 - Print the largest number, the smallest number, and their difference.
 - Calculate the average of the list.
 - Print all numbers that are above the average.
 - Finally, print how many numbers are even and how many are odd in the list.
*/
import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = enterData();
  operationOnNumbers(numbers);
}

List<int> enterData() {
  print('enter the length of the list of number');
  int numberOfLength = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  int number = 0;
  for (int i = 0; i < numberOfLength; i++) {
    print('enter the number${i + 1}');
    number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  return numbers;
}

void operationOnNumbers(List<int> numbers) {
  int largestNumber = numbers.first;
  int smallestNumber = numbers.first;
  int sum = 0;
  num average = 0;
  int countOfNumberOdd = 0;
  int countOfNumberEven = 0;
  numbers.forEach((element) {
    sum += element;
    if (element > largestNumber) {
      largestNumber = element;
    }
    if (element < smallestNumber) {
      smallestNumber = element;
    }
    if (element % 2 == 0) {
      countOfNumberEven++;
    } else {
      countOfNumberOdd++;
    }
  });
  average = sum / numbers.length;
  print(
    'largest element: $largestNumber and smallest element: $smallestNumber',
  );
  print(
    'average: ${average} and difference: ${largestNumber - smallestNumber}',
  );
  numbers.forEach((element) {
    if (element > average) {
      print('the number above average $element');
    }
  });
  print('count of the even number $countOfNumberEven');
  print('count of the odd number $countOfNumberOdd');
}
