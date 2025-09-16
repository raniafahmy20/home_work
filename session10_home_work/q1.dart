/* Q1
 Create a class BankAccount with a private field _balance.
 - Add a getter balance that returns the balance.
 - Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
 - In main(), demonstrate creating an account, updating the balance, and trying to set a negative balance.

*/
void main() {
  BankAccount bankAccount = BankAccount();
  bankAccount.balance = 1000;
  print('balance: ${bankAccount.balance}');
  bankAccount.balance = -1200;
  print('balance: ${bankAccount.balance}');
}

class BankAccount {
  num _balance = 0;

  num get balance => this._balance;
  set balance(num balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print('Invalid balance');
    }
  }
}
