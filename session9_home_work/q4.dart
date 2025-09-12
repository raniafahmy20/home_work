/*
Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
 that increases the salary. In main(), create an employee, give them a raise, and print the new
 salary.

*/
void main() {
  Employee employee = Employee(name: 'rania ', salary: 12000);
  employee.giveRaise(2000);
  print('the new salary:${employee.salary}');
}

class Employee {
  String? name;
  num? salary;
  Employee({required String name, required num salary}) {
    this.name = name;
    this.salary = salary;
  }
  void giveRaise(int amount) {
    salary = salary! + amount;
  }
}
