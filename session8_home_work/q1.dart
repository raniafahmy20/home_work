/*Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
 method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
 the method.
 */
void main() {
  Calculator calculator = Calculator();
  calculator.addNumbers();
}

class Calculator {
  int num1 = 15;
  int num2 = 5;
  void addNumbers() {
    print('sum=${num1 + num2}');
  }
}
