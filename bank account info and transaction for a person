class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;
// define a function for bank account
  BankAccount(this.accountNumber, this.accountHolderName, this.balance);
// function for deposite
  void deposit(double amount) {
    balance += amount;
  }

// function for withdrawl
  void withdraw(double amount) {
    balance -= amount;
  }
}

// savingaccount class
class SavingsAccount extends BankAccount {
  double interestRate;
  double minimumBalance;
// define a fun called savingaccount
  SavingsAccount(String accountNumber, String accountHolderName, double balance,
      this.interestRate, this.minimumBalance)
      : super(accountNumber, accountHolderName, balance);
// the function addinterest

  void addInterest() {
    balance += balance * interestRate;
  }

  @override
  void withdraw(double amount) {
    if (balance - amount < minimumBalance) {
      print('Minimum balance violated');
    } else {
      balance -= amount;
    }
  }
}

class Cat {
  String sound;
  Cat(this.sound);
}

void main() {
  var savingsAccount =
      SavingsAccount('1000123456', 'milka fasika', 10000, 0.05, 5000);
  savingsAccount.addInterest();
  savingsAccount.withdraw(3000);
  print(
      'Account Number: ${savingsAccount.accountNumber}\nAccount Holder Name: ${savingsAccount.accountHolderName}\nBalance: ${savingsAccount.balance}\nInterest Rate: ${savingsAccount.interestRate}\nMinimum Balance: ${savingsAccount.minimumBalance}');
}
