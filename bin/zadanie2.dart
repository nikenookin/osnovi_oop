class BankAccount {
  String owner;
  double balance;
  BankAccount(this.owner, {this.balance = 0});

  void deposit(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма пополнения должна быть больше 0');
      return;
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма снятия должна быть больше 0');
      return;
    }
    if (amount > balance) {
      print('Ошибка: недостаточно средств на счёте $owner');
      return;
    }
    balance -= amount;
  }

  double getBalance() {
    return balance;
  }

  void printStatement() {
    print('Владелец: $owner, баланс: $balance');
  }
}

void main() {
  final acc1 = BankAccount('Басал');
  final acc2 = BankAccount('ЯАртем', balance: 500);

  acc1.deposit(1200);
  acc1.withdraw(350);
  acc1.withdraw(2000);

  acc2.deposit(250);
  acc2.withdraw(100);

  acc1.printStatement();
  acc2.printStatement();
}