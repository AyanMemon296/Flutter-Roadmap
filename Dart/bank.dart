/*
The Project: "HyperBank CLI" 🏦
We will build a text-based banking app that simulates a real backend.
Why this project?
It covers everything:
1.	Variables: Storing Money (double), Name (String).
2.	Control Flow: You can't withdraw if balance < amount (if/else).
3.	Functions: deposit(), withdraw().
4.	OOP: You need a class BankAccount and a class User.
5.	Null Safety: A transaction might have a "Note" or it might be null.
6.	Collections: A List<String> to store "Transaction History".
7.	Async: We will simulate "Connecting to Server..." when logging in.
8.	Shortcuts: Use Enums for TransactionType.deposit or TransactionType.withdrawal.
________________________________________
The Challenge
I will give you the requirements. You have to try to write the code.
Requirements:
1.	Create an Enum: TransactionType with values: deposit, withdraw.
2.	Create a Class: BankAccount.
o	Properties: String holderName, double _balance (Private!), List<String> history.
o	Constructor: Named constructor requiring holderName.
3.	Methods in Class:
o	deposit(double amount): Adds money, adds a record to history.
o	withdraw(double amount): Checks if enough balance. If yes, subtracts and adds to history. If no, print error.
o	getStatement(): Uses .map to print the history nicely.
4.	Async Function:
o	Create Future<void> processTransaction() that waits 2 seconds before showing "Transaction Successful".
5.	Main Function:
o	Login (Simulate wait).
o	Create Account.
o	Deposit 500.
o	Withdraw 200.
o	Print Statement.
*/

enum TransactionType { deposit, withdraw }

class BankAccount {
  String holderName;
  double _balance = 100; 
  List<String> history = [];
  
  BankAccount({required this.holderName});
  
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount"); // Feedback
      history.add("Deposited $amount. New Balance: $_balance");
    } else {
      print("Transaction not allowed");
    }
  }
  
  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print("Withdrew: $amount"); // Feedback
      history.add("Withdrew $amount. New Balance: $_balance");
    } else {
      print("Transaction Failed: Insufficient funds or invalid amount");
    }
  }
  
  void getStatement() {
    print("--- Statement for $holderName ---");
    for (var item in history) {
      print(item);
    }
  }
}

Future<void> processTransaction() async {
  print("Processing..."); // Added for realism
  await Future.delayed(Duration(seconds: 2));
  print("Success!");
}

void main() async {
  print("--- System Start ---");
  
  // 1. Login Simulation
  await processTransaction();
  
  // 2. Create Object
  BankAccount a1 = BankAccount(holderName: "firstUser");
  
  // 3. Deposit
  a1.deposit(500);
  await processTransaction(); // Simulate wait for bank
  
  // 4. Withdraw
  a1.withdraw(200);
  await processTransaction();
  
  // 5. Print Statement 
  a1.getStatement(); 
}