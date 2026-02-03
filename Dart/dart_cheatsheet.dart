// ============================================================
// PROJECT: SUPERWALLET & DART MASTERY CHEATSHEET
// Author: Ayan Memon
// Purpose: A complete guide to Dart from Basics to Asynchronous
// Note: This file contains multiple 'main' functions for reference.
//       Do not run the whole file at once.
// ============================================================


// ============================================================
// TOPIC 1: VARIABLES & DATA TYPES
// ============================================================
/* SYNTAX:
   DataType variableName = value;
   
   Types:
   - int: Whole numbers (1, 10, 500)
   - double: Decimals (10.5, 99.99)
   - String: Text ("Hello")
   - bool: True/False logic
   - var: Let Dart guess the type
   - final: Value cannot change after setting once (Runtime)
   - const: Value is frozen forever at compile time
   
   String Interpolation: 
   "Hello $name" (Use $ to insert variables inside text)
*/

// ------------------------------------------------------------
// The Project: "SuperWallet" (A Digital Wallet Core)
// ------------------------------------------------------------

void main() {
  double walletBalance = 500.00;
  String userName = "Ayan";
  bool isKycDone = true;
  final String upiId = "ayan@sbi";
  const String appName = "SuperWallet";
  
  String? email;
  print("email: $email");
  print("hello, $userName, your balance is $walletBalance Rs.");
  print("your upi id is $upiId");
  
  email="ayan@gmail.com";
  print("email = $email");
}


// ------------------------------------------------------------
// Scenario: A YouTube Video Player
// ------------------------------------------------------------

void main() {
  var vidTitle = "Dart Tutorial 2025";
  int views = 100;
  bool isVideoLoading = true;
  final int vidId = 616;
  String? comment;

  print("Video Title: $vidTitle");
  print("Views: $views");
  print("Is Loading: $isVideoLoading");
  print("Video ID: $vidId");
  print("Comment: $comment");

  comment = "nice vid";
  print("Comment: $comment");
}



// ============================================================
// TOPIC 2: CONTROL FLOW (LOGIC)
// ============================================================
// The Scenario: SuperWallet Intelligence. Right now, our wallet just stores money. We need to make it Smart.

/* SYNTAX:
   1. If/Else:
      if (condition) { 
        // Code if true 
      } else { 
        // Code if false 
      }
   
   2. Else-If (Ladder):
      if (A) { ... } else if (B) { ... } else { ... }

   3. Switch:
      switch (variable) { 
        case value: ... break; 
        default: ... 
      }
      
   4. For Loop:
      for (start; stop; step) { ... }
*/

// ------------------------------------------------------------
// Level 1: The Simple Guard (if) 
// Goal: Prevent spending if the user is broke.
// ------------------------------------------------------------

void main(){
  int userBalance=10;
  
  if (userBalance<50){
    print("warning your balance is to low");
  }
}


// ------------------------------------------------------------
// Level 2: The Fork in the Road (if-else) 
// Goal: Handle Success AND Failure.
// ------------------------------------------------------------

void main() {
  bool isServiceOnline = true;

  if (isServiceOnline) {
    print("Payment processing...");
  } else {
    print("Connection lost");
  }
}


// ------------------------------------------------------------
// Level 3: The Ladder (else-if) 
// Goal: Give rewards based on how rich the user is (Silver/Gold/Platinum).
// ------------------------------------------------------------

void main(){
  int balance=50000;
  
  if (balance>100000){
    print("Gold user");
  } else if (balance>25000) {
    print("Silver User");
  } else {
    print("bronze user");
  }
}


// ------------------------------------------------------------
// Level 4: The Menu (switch) 
// Goal: Handle different payment modes clearly.
// ------------------------------------------------------------

void main(){
  String mode = "paisa";
  
  switch(mode){
    case "UPI":
      print("open gpay");
      break;
      
    case "card":
      print("Card detail");
      break;
      
    default:
      print("Cash");
      
  }
}


// ------------------------------------------------------------
// Level 5: The Loop (for) 
// Goal: Try to connect to the bank server 3 times before giving up.
// ------------------------------------------------------------

void main(){
  int i=1;
  
  for (i=1; i<4; i++){
    print("connectin to server");
  }
}


// ------------------------------------------------------------
// Write the logic for the YouTube Video Player again, but make it functional.
/*
Scenario:
Create a variable bool isBuffering = false;.
Create a variable int internetSpeed = 3; (Mbps).
Logic 1: If isBuffering is true, print "Loading Circle...". Else, print "Playing Video".
Logic 2: Using if/else if:
If speed > 10 -> Print "Quality: 1080p".
If speed > 5 -> Print "Quality: 720p".
Otherwise -> Print "Quality: 360p".
Logic 3: Use a for loop to print "Ad playing: Second 1", "Ad playing: Second 2"... up to 5.
*/
// ------------------------------------------------------------

void main(){
  bool isBuffering = false;
  int internetSpeed = 3;
  
  if (isBuffering == true){
    print("Loading Cicle");
  } else {
    print("Playing Video");
  }
  
  if (internetSpeed > 10){
    print("Play video at 1080p");
  } else if (internetSpeed > 5) {
    print("Play video at 720p");
  } else {
    print("Play video at 360p");
  }
  
  int i=1; //seconds = i
  
  for (i=1; i<6; i++){
    print("playing ad $i");
  }
}



// ============================================================
// TOPIC 3: FUNCTIONS (THE MACHINE)
// ============================================================

/* SYNTAX:
   // Definition
   returnType functionName(parameterType paramName) {
      // Body
      return value;
   }

   // Arrow Syntax (Short way for one line)
   returnType functionName(params) => expression;

   // Named Parameters (Flutter Style)
   void function({required Type name}) { ... }
*/

// ------------------------------------------------------------
// Level 1: The Basic Action (void) 
// Goal: Just print a receipt. No inputs, no outputs.
// ------------------------------------------------------------

void printReceipt(){
  print("-- Receipt --");
  print("Success");
}

void main(){
  printReceipt();
}


// ------------------------------------------------------------
// Level 2: The Input (parameters) 
// Goal: Send money to a specific person.
// ------------------------------------------------------------

void sendMoney(String receiver, int amount) {
  print("Sending $amount money to $receiver.");
}

void main() {
  sendMoney("firstUser", 500);
  sendMoney("secondUser", 505);
}


// ------------------------------------------------------------
// Level 3: The Output (return) 
// Goal: Calculate tax and give the number back so we can use it later.
// ------------------------------------------------------------

double calculateTax(double amount){
  double tax = amount * 0.18;
  return tax;
}

void main(){
  double ps5Tax = calculateTax(10000);
  print("your tax will be $ps5Tax");
}


// ------------------------------------------------------------
// Level 4: The One-Liner (Arrow =>) 
// Goal: Write short code. Professionals love this for simple math.
// Normal way:
// double getBonus(int points) {
//    return points * 2.5;
// }
// Arrow way (Same logic, less typing):
// ------------------------------------------------------------

double getBonus(int points) => points * 2.5;

void main(){
  print(getBonus(1000));
}


// ------------------------------------------------------------
// Level 5: The "Flutter Style" (Named Parameters {}) 
// Goal: This is exactly how Widgets work. Watch carefully.
// In Level 2, we had to remember the order: ("firstUser", 500). If you swap them, it breaks. In Named Parameters, we wrap inputs in {} so we can use names.
// ------------------------------------------------------------

void createUser({required String name, int? age}){
  print("user: $name, age: $age");
}

void main(){
  createUser(name:"firstUser", age:20);
  createUser(age:20, name:"secondUser");
}


// ------------------------------------------------------------
// Write the functions for the YouTube Video Player.
/*
Scenario:
Function 1 (Void): Create a function named playVideo that takes a String title. It should print "Playing: [title]".
Function 2 (Return): Create a function named getDuration. It takes no inputs. It returns the integer 600.
Function 3 (Arrow): Create a function named formatViews. Input is int views. Logic: Return views * 100 (Simulating fake views). Use the arrow syntax =>.
Function 4 (Named Params): Create a function named showComment.
Inputs: String user (Required) AND String? text (Nullable).
Logic: Print "$user says: $text".
*/
// ------------------------------------------------------------

void playVideo(String title){
  print("Playing: $title");
}

int getDuration(){
  return 600;
}

int formatViews(int views) => views * 100;

void showComment({required String user, String? comment}){
  print("$user says $comment.");
}

void main(){
  playVideo("dart tutorial 2025");
  
  int myDuration = getDuration();
  print("Video duration is $myDuration seconds");
  
  int finalViews = formatViews(100);
  print("Views: $finalViews");
  
  showComment(user:"firstUser", comment:"firstUser comment");
  showComment(comment:"secondUser comment", user:"secondUser");
}



// ============================================================
// TOPIC 4: OBJECT-ORIENTED PROGRAMMING (OOP)
// ============================================================

/* SYNTAX:
   class ClassName {
     // Properties (Variables)
     Type variableName;
     
     // Constructor (The Builder)
     ClassName(this.variableName);
     
     // Method (Action)
     void methodName() { ... }
   }
*/

// ------------------------------------------------------------
// Level 1: The Blueprint (Defining a Class) 
// Goal: Create the template. No code runs yet.
// ------------------------------------------------------------

class User{
  String name = "GuestUser";
  double balance = 0.0;
}

void main(){
  User myUser = User();
  
  print(myUser.name);
  
  myUser.name="firstUser";
  print(myUser.name);
}


// ------------------------------------------------------------
// Level 3: The Constructor (The Setup) 
// Goal: Set the name when we build the user, not after.
// ------------------------------------------------------------

class User {
  String name;
  double balance;

  User(this.name, this.balance);
  // "this.name" means: "Take the input and put it in MY variable."
}

void main() {
  User u1 = User("firstUser", 500.0);
  User u2 = User("secondUser", 505.0);

  print(u1.name);
  print(u2.name);
}


// ------------------------------------------------------------
// Level 4: The Flutter Way (Named Constructor) 
// Goal: Use curly braces {} so we know what we are passing. Every Flutter Widget uses this.
// ------------------------------------------------------------

class User {
  String name;
  double balance;

  User({required this.name, required this.balance});
}

void main() {
  User appUser = User(name: "firstUser", balance: 500.0);
}


// ------------------------------------------------------------
// Level 5: Methods (Actions) 
// Goal: The user should be able to do things, like print their own invoice.
// ------------------------------------------------------------

class User {
  String name;
  double balance;

  User({required this.name, required this.balance});

  void printInvoice() {
    print("username: $name");
    print("total balance: ₹$balance");
  }
}

void main() {
  User finalUser = User(name: "firstUser", balance: 500.56);
  finalUser.printInvoice();
}


// ------------------------------------------------------------
// Write the Class for the YouTube Video Player.
/*
Scenario:
Create a Class named Video.
Properties: title (String), duration (int), likes (int)
Constructor: Use the Named Parameter style (Level 4). All fields are required.
Method: Create a method named play(). Logic: Print "Now Playing: [title] | Duration: [duration] sec".
In main(): Create an object v1 with title "Dart Tutorial", duration 600, likes 50. Call v1.play().
*/
// ------------------------------------------------------------

class Video{
  String title;
  int duration;
  int likes;
  
  Video({required this.title, required this.duration, required this.likes});
  
  void play(){
    print("Now Playing: $title | Duration: $duration sec | Likes: $likes");
  }
}

void main(){
  Video v1 = Video(title:"Dart Tutorial", likes:69, duration:6000);
  v1.play();
}



// ============================================================
// TOPIC 4 (PART 2): INHERITANCE
// ============================================================

/* SYNTAX:
   class Child extends Parent {
      // Child Constructor calling Parent
      Child() : super(); 
      
      // Override (Change functionality)
      @override
      void method() { 
        super.method(); // Run parent logic first
      }
   }
*/

// ------------------------------------------------------------
// Let's Code: The 3 Levels of "Video Inheritance"
// Level 1: The Parent Class (The Base) Goal: Define the common stuff.
// ------------------------------------------------------------

class Video{
  String title;
  int duration;
  
  Video(this.title, this.duration);
  
  void play(){
    print("Playing Video: $title");
  }
}

// Level 2: The Child Class (extends) Goal: Create a "Short" that has everything a Video has, PLUS a loop feature.

class ShortVideo extends Video{
  bool isLooping;
  
  ShortVideo(String title, int duration, this.isLooping):super(title, duration);
  
  // Level 3: Polymorphism (@override) Goal: Change how the "play" function works for Shorts.
  
  @override
  void play(){
    super.play();
    print("Looping: $isLooping");
  }
}

void main(){
  ShortVideo myShort = ShortVideo("Funny Cat", 15, true);
  myShort.play();
}


// ------------------------------------------------------------
// We will create a Premium User system.
/*
Scenario:
1. Parent Class: User. Properties: String name. Constructor: User(this.name). Method: void showBadge() -> Prints "Standard Badge".
2. Child Class: PremiumUser (inherits from User). Property: double rewardPoints. Constructor: Accepts name and rewardPoints. Passes name to super.
Override: Change showBadge() to print "Gold Badge (Points: [rewardPoints])".
*/
// ------------------------------------------------------------

class User{
  String name;
  
  User(this.name);
  
  void showBadge(){
    print("Standard Badge");
  }
}

class PremiumUser extends User{
  double rewardPoints;
  
  PremiumUser(String name, this.rewardPoints):super(name);
  
  @override
  void showBadge(){
    print("Gold Badge, Points: $rewardPoints");
  }
}

void main(){
  PremiumUser p1 = PremiumUser("premimumUser1", 25.5);
  p1.showBadge();
}


// ------------------------------------------------------------
// The "Smart Home" Challenge
/*
Scenario: We are building a Smart Home app.
1. Parent Class: Device. Property: String brand. Constructor: Takes brand. Method: turnOn() -> Prints "Turning on [brand] device...".
2. Child Class: SmartLight (Inherits from Device). Property: String color. Constructor: Accepts brand AND color. Passes brand to super. Stores color.
Override Method: turnOn(). First, run the parent's logic (super.turnOn()). Then, print "Changing light color to [color]".
*/
// ------------------------------------------------------------

class Device{
  String brand;
  
  Device(this.brand);
  void turnOn(){
    print("Turning on $brand device");
  }
}

class SmartLight extends Device{
  String color;
  
  SmartLight(String brand, this.color): super(brand);
  
  @override
  void turnOn(){
    super.turnOn();
    print("Changing light color to $color");
  }
}

void main(){
  SmartLight l1 = SmartLight("Philips", "Blue");
  l1.turnOn();
}



// ============================================================
// TOPIC 4 (PART 3): ENCAPSULATION (THE PRIVACY FILTER)
// ============================================================

/* SYNTAX:
   // Private Variable (Start with underscore)
   String _password;
   
   // Getter (Controlled Access)
   String get name => _name;
   
   // Setter (Controlled Update)
   set name(String val) { ... }
*/

// ------------------------------------------------------------
// Level 1: The Dangerous Way (No Encapsulation) 
// Goal: See how easy it is to break the app.
// ------------------------------------------------------------

class BankAccount{
  double balance = 0;
}

void main(){
  BankAccount a1 = BankAccount();
  a1.balance = -50000;
  print(a1.balance);
}


// ------------------------------------------------------------
// Level 2: The Private Variable (_) 
// Goal: Hide the money.
// ------------------------------------------------------------

class BankAccount {
  double _balance = 0;

  double getbalance() {
    return _balance;
  }
}

void main() {
  BankAccount a1 = BankAccount();
  print(a1.getbalance());
}


// ------------------------------------------------------------
// Level 3: Controlled Access (Getters & Logic) 
// Goal: Allow deposits, but only if the amount is positive.
// ------------------------------------------------------------

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print("Deposited: $amount");
    } else {
      print("Error: Cannot deposit negative money");
    }
  }
}

void main() {
  BankAccount a1 = BankAccount();

  a1.deposit(100);
  a1.deposit(-100);

  //print(a1._balance); //it will run bcoz of code is written in same file, which should be in different file, in that case use belowfor different files
  print("Current balance: ${a1.balance}");
}


// ------------------------------------------------------------
// Scenario: A Password Manager.
/*
1. Create a class Account.
2. Private Property: String _password.
3. Constructor: Takes a password and sets _password.
4. Getter: Create a getter named hiddenPassword. Logic: Return "******" (Mask the real password).
5. Method: void changePassword(String newPass). Logic: If newPass length is less than 6, print "Too short". Else, update _password and print "Password Changed".
*/
// ------------------------------------------------------------

class Account{
  String _password;
  
  Account(this._password);
  
  String get hiddenPassword => "******";
  
  void changePassword(String newPass){
    if(newPass.length < 6){
      print("password is too short.");
    } else {
      _password=newPass;
      print("Password Changed");
    }
  }
}

void main(){
  Account a1 = Account("secret123");
  print("Password: ${a1.hiddenPassword}");
  a1.changePassword("newSuperSecret");
}



// ============================================================
// TOPIC 4 (PART 4): ABSTRACTION (THE CONTRACT)
// ============================================================

/* SYNTAX:
   abstract class Name {
     // Abstract Method (Rule, no body)
     void method(); 
     
     // Normal Method (Can have body)
     void normal() { ... }
   }
*/

// ------------------------------------------------------------
// Level 1: The Idea (The Abstract Class) 
// Goal: Define the rules. We don't know how to calculate area yet, but we know every shape needs it.
// ------------------------------------------------------------

abstract class Shape {
  void calculateArea();
  
  void printInfo(){
    print("I am a Shape.");
  }
}

// Level 2: The Fulfillment (The Concrete Class) Goal: Create a Circle that follows the rules.

class Circle extends Shape{
  double radius;
  Circle(this.radius);
  
  @override
  void calculateArea(){
    double area = 3.14 * radius * radius;
    print("Circle area: $area");
  }
}

// Level 3: Another Worker (Different Logic) Goal: Create a Rectangle. Same rule, different math.

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);
  
  @override
  calculateArea(){
    double area = width * height;
    print("Rectangle Area: $area");
  }
}

void main(){
  Circle c1 = Circle(5);
  c1.calculateArea();
  c1.printInfo();
  
  Rectangle r1 = Rectangle(5, 4);
  r1.calculateArea();
}


// ------------------------------------------------------------
// Scenario: An RPG Game.
/*
1. Abstract Class: GameCharacter. Abstract Method: void attack(); Normal Method: void run() { print("Running..."); }
2. Child Class 1: Warrior (extends GameCharacter). Override: attack() -> Print "Swinging Sword!".
3. Child Class 2: Archer (extends GameCharacter). Override: attack() -> Print "Shooting Arrow!".
In main(): Create a Warrior and an Archer. Make both attack(). Make the Warrior run().
*/
// ------------------------------------------------------------

abstract class GameCharacter{
  void attack();
  
  void run(){
    print("Character is Running.");
  }
}

class Warrior extends GameCharacter{
  @override
  void attack(){
    print("Swinging Sword!");
  }
}

class Archer extends GameCharacter{
  @override
  void attack(){
    print("Shooting Arrow!");
  }
}

void main(){
  Warrior w1 = Warrior();
  w1.attack();
  w1.run();
  
  Archer a1 = Archer();
  a1.attack();
}



// ============================================================
// TOPIC 5: NULL SAFETY (THE SAFETY NET)
// ============================================================

/* SYNTAX:
   Type? variableName;  // Nullable (Can be empty)
   variableName!        // Bang Operator (Force unwrap, I promise it's not null)
   variable ?? "Value"  // If-Null (Use this default if variable is null)
   required             // Constructor keyword (Must provide value)
*/

// ------------------------------------------------------------
// Level 1: The Crash Prevention (?) 
// Goal: Create a variable that is allowed to be empty.
// ------------------------------------------------------------

void main(){
  String name = "firstUser";
  String? bio;
  
  print(name);
  print(bio);
}


// ------------------------------------------------------------
// Level 2: The Default Value (??) 
// Goal: If the bio is missing, show "Available" instead of "null".
// ------------------------------------------------------------

void main(){
  String? bio;
  
  print(bio??"Available");
}


// ------------------------------------------------------------
// Level 3: The Crash (Using !) 
// Goal: See what happens when we force it.
// ------------------------------------------------------------

void main() {
  String? bio;
  bio = "fella human";
  print(bio!);
}


// ------------------------------------------------------------
// Level 4: Null Safety in Classes (required) 
// Goal: Ensure important data exists.
// ------------------------------------------------------------

class User {
  String name;
  String? bio;

  User({required this.name, this.bio});
}

void main() {
  User u1 = User(name: "firstUser", bio: "maybe human");
  User u2 = User(name: "secondUser");

  print(u1.name);
  print(u2.bio);
}


// ------------------------------------------------------------
// We will create a Music Player logic.
/*
Scenario:
1. Create a class Song. Properties: title (String, Required), artist (String, Nullable ?).
2. Constructor: Use named parameters.
3. Method: play(). Logic: Print "Playing [title]". Check if artist != null. If yes, print artist. Else print Unknown.
*/
// ------------------------------------------------------------

class Song {
  String title;
  String? artist;

  Song({required this.title, this.artist});

  void play() {
    print("Playing $title");
    if (artist != null) {
      print("Artist: $artist");
    } else {
      print("Artist: Unknown");
    }
  }
}

void main() {
  Song s1 = Song(title: "Dil Ibaadat", artist: "KK");
  Song s2 = Song(title: "Tera Mera Rishta");
  
  print("--- Song ----");
  s1.play();
  
  print("\n--- Song ----");
  s2.play();
}



// ============================================================
// TOPIC 6: COLLECTIONS (LISTS & MAPS)
// ============================================================

/* SYNTAX:
   // List (Ordered)
   List<Type> name = [val1, val2];
   
   // Map (Key-Value)
   Map<KeyType, ValueType> name = {key: value};
   
   // For-In Loop
   for (var item in list) { ... }
   
   // .map (Transform)
   list.map((item) => newItem).toList();
*/

// ------------------------------------------------------------
// Level 1: The Simple List (List<String>) 
// Goal: Store a list of simple text names.
// ------------------------------------------------------------

void main(){
  List<String> users = ["user1", "user2", "user3"];
  
  print(users);
  
  users.add("user4");
  print(users);
  
  users.remove("user4");
  print(users);
  
  print(users.length);
  
  print(users[0]);
  print(users[1]);
  
  print(users.contains("user4"));
  print(users.contains("user3"));
}


// ------------------------------------------------------------
// Level 2: Accessing Data (The Index []) 
// Goal: Get just one specific person.
// ------------------------------------------------------------

void main(){
  List<String> users = ["user1", "user2", "user3"];
  
  print(users[2]);
}


// ------------------------------------------------------------
// Level 3: List of Objects (List<Song>) 
// Goal: Store your Song objects in a list, not separate variables.
// ------------------------------------------------------------

class Song{
  String title;
  Song(this.title);
}

void main() {
  List<Song> myPlaylist = [
    Song("Song A"),
    Song("Song B"),
    Song("Song C"),
  ];
  
  print(myPlaylist[1].title);
}


// ------------------------------------------------------------
// Level 4: The Loop (Solving Repetition) 
// Goal: Use a loop to play ALL songs automatically. This solves your problem.
// ------------------------------------------------------------

void main(){
  List<String> playlist = ["Song A", "Song B", "Song C"];
  
  for (String i in playlist){
    print("Now Playling: $i");
  }
}


// ------------------------------------------------------------
// Level 5: The Map (Key-Value) 
// Goal: Store user details where we look them up by a label.
// ------------------------------------------------------------

void main(){
  Map<String, int> userAges = {
    "user1": 25,
    "user2": 24,
    "user3": 22,
  };
  
  //.entries holds both the Key and Value together. 
  for (var i in userAges.entries){
    print("username: ${i.key}, Age: ${i.value}");
  }
}


// ------------------------------------------------------------
// We will fix your Song Code using a List and a Loop.
/*
Scenario:
1. Keep your existing Song class (with title, artist, and play() method).
2. In main(): Create a List<Song> named myPlaylist. Add 3 songs.
3. The Solution: Write a for loop (Level 4 style) to iterate through the list and call .play() on each song.
*/
// ------------------------------------------------------------

class Song {
  String title;
  String? artist;

  Song({required this.title, this.artist});

  void play() {
    print("Song: $title");
    if (artist != null) {
      print("artist: $artist");
    } else {
      print("artist: Unknown");
    }
    print("-------------");
  }
}

void main() {
  List<Song> myPlaylist = [
    Song(title: "Dil Ibaadat", artist: "KK"),
    Song(title: "Aye Khuda"),
    Song(title: "Tera Mera Rishta", artist: "Mustafa Zahid"),
  ];

  for (int i = 0; i < myPlaylist.length; i++) {
    print("---- Song ${i + 1} ----");
    myPlaylist[i].play();
  }
}



// ============================================================
// TOPIC 6 (PART 2): THE .MAP() METHOD
// ============================================================

/* SYNTAX:
   var newList = oldList.map((item) => transformation).toList();
*/

// ------------------------------------------------------------
// 2. Comparison: For Loop vs .map()
// Scenario: Convert [1, 2, 3] into ["#1", "#2", "#3"].
// Option A: The Old Way (For Loop) Verbose and manual.
// ------------------------------------------------------------

void main() {
  List<int> numbers = [1, 2, 3];
  List<String> result = []; // 1. Create empty bucket
  
  for (var n in numbers) {
    result.add("#$n"); // 2. Manually add to bucket
  }
  
  print(result); 
}


// ------------------------------------------------------------
// The Professional Way (.map) Clean and functional.
// ------------------------------------------------------------

void main(){
  List<int> numbers = [1, 2, 3];
  List<String> result = numbers.map((n)=>"#$n").toList();
  print(result);
}


// ------------------------------------------------------------
// The "Price Tag" Converter
// Level 1: Simple Transformation Goal: Add a dollar sign to a list of integers.
// ------------------------------------------------------------

void main(){
  List<int> prices = [100, 200, 300];
  var tags = prices.map((n)=>"\$$n").toList();
  print(tags);
}


// ------------------------------------------------------------
// Level 2: Object Transformation (Advanced) 
// Goal: Take a List of User objects and extract just their names into a new List.
// ------------------------------------------------------------

class User{
  String name;
  User(this.name);
}

void main(){
  List<User> users = [User("firstUser"), User("secondUser")];
  List<String> names = users.map((u)=>u.name).toList();
  print(names);
}


// ------------------------------------------------------------
// We will simulate a "Email Extractor".
/*
Scenario:
1. Class: User with property String email.
2. Main: Create a List<User> with 3 users.
3. The Task: Use .map() to create a new list of Strings called emailList. The new list should only contain the email strings.
*/
// ------------------------------------------------------------

class User {
  String email;
  User(this.email);
}

void main(){
  List<User> users = [User("a@gmail.com"), User("b@gmail.com"), User("c@gmail.com")];
  List<String> emailList = users.map((u)=>u.email).toList();
  print(emailList);
}



// ============================================================
// TOPIC 7: ASYNCHRONOUS PROGRAMMING (ASYNC/AWAIT)
// ============================================================

/* SYNTAX:
   // The Receipt (Future)
   Future<Type> functionName() async { ... }
   
   // The Wait (await)
   var data = await functionName();
   
   // Simulation
   await Future.delayed(Duration(seconds: 3));
*/

// ------------------------------------------------------------
// Level 1: The Synchronous Freeze (The Problem) 
// Goal: Understand why we need this. (Hypothetical code).
// ------------------------------------------------------------

// Hypothetical "Bad" Code
String getVideo() {
  // Imagine this line freezes the CPU for 3 seconds
  sleep(3 seconds); 
  return "Funny Cat Video";
}

void main() {
  print("1. Clicked Video");
  String video = getVideo(); // ❌ APP FREEZES HERE
  print("2. Playing $video");
}


// ------------------------------------------------------------
// Level 2: The Future (The Promise) 
// Goal: Change the return type to a Receipt.
// ------------------------------------------------------------

Future<String> downloadVideo() async{
  await Future.delayed(Duration(seconds:3));
  return "Funny Cat Video";
}

void main() async {
  print("1. Requesting Video...");
  String video = await downloadVideo();
  print("2. Playing $video");
}


// ------------------------------------------------------------
// Level 4: Handling Errors (try-catch) 
// Goal: What if the internet disconnects?
// ------------------------------------------------------------

Future<String> downloadVideo() async{
  await Future.delayed(Duration(seconds: 3));
  return "Funny Cat Video";
}

void main() async{
  try{
    print("Connecting to internet...");
    String video = await downloadVideo();
    print("Success: $video");
  } catch (e){
    print("Error: Download Failed");
  }
}


// ------------------------------------------------------------
// Level 5: The "Loading" Flow 
// Goal: Simulate a real app loading screen.
// ------------------------------------------------------------

void main() async{
  print("App Started");
  print("Loading indicator: ON");
  
  String data = await fetchUserData();
  
  print("Loading indicator: OFF");
  print("Welcome, $data");
}

Future<String> fetchUserData() async{
  await Future.delayed(Duration(seconds: 3));
  return "firstUser";
}


// ------------------------------------------------------------
// Scenario: User Login System.
/*
1. Create a function named loginUser(). Return Type: Future<String>. Keyword: async. Logic: Wait for 3 seconds. Return "Login Successful".
2. In main(): Mark it async. Print "Clicking Login Button...". Call loginUser() and store result using await. Print result.
*/
// ------------------------------------------------------------

Future<String> loginUser() async{
  await Future.delayed(Duration(seconds: 3));
  return "Login Successful";
}

void main() async{
  print("Clicking Login Button");
  String result = await loginUser();
  print(result);
  print("Welcome to Home Screen");
}



// ============================================================
// TOPIC 8: FLUTTER SHORTCUTS (SYNTACTIC SUGAR)
// ============================================================

/* SYNTAX:
   // Ternary (One line If/Else)
   condition ? valueIfTrue : valueIfFalse;
   
   // Enum (Restricted List)
   enum Name { option1, option2 }
*/

// ------------------------------------------------------------
// The Ternary Operator (? :)
// ------------------------------------------------------------

void main(){
  bool isLoggedIn = true;
  String status;
  
  status = isLoggedIn?"Welcome":"Login to account";
  print(status);
}


// ------------------------------------------------------------
// Enums (enum)
// ------------------------------------------------------------

enum UserRole {admin, guest, editor}

void main(){
  UserRole currentRole = UserRole.admin;
  
  currentRole == UserRole.admin ? print("Granting Full Access") : print("Don't give Access");
}


// ------------------------------------------------------------
// We will combine Ternary Operators and Enums.
/*
Scenario: A Traffic Light System.
1. Define an Enum: TrafficLight with values: red, green, yellow.
2. In main(): Create variable currentLight. Use Ternary Operator to set "Stop" or "Go".
*/
// ------------------------------------------------------------

enum TrafficLight {red, green, yellow}
void main(){
  TrafficLight currentLight = TrafficLight.red;
  String action;
  
  action = currentLight == TrafficLight.red ? "Stop" : "Go";
  print(action);
}
// Created by Ayan Memon