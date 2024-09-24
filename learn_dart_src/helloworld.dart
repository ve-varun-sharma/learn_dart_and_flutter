import 'dart:io';

void main() {
  variables();
  primitiveDataTypes();
  lists();
  maps();
  loops();
  dartLogic();
  dartFunctions();
  userInput();
  classes();
}

void variables() {
  // variables

  // strings
  var name = 'John';
  String name2 = 'John';

  // Integer
  var x = 41;
  int x2 = 41;

  print(x);

  dynamic firstName = "Tim";

  const String fullName = "John Elder";
  final String nickname = "J";

  // declaring and not using
  var myName;
  print(myName);
  ;

  myName = "John";
  print(myName);
}

void primitiveDataTypes() {
  // Data types

  // Numbers, Strings, Booleans, Lists, Maps, Dynamic

  // Strings
  String firstName = "john";
  print("String: $firstName");

  // Integers
  int myNum = 41;
  print("integer: $myNum");

  // Doubles
  // In Dart, a double is a data type that represents a double-precision floating-point number. This means it can store a wide range of decimal numbers, including those with fractional parts.
  double otherNum = 1995;
  print("Double: $otherNum");
  double pi = 3.14159;
  double radius = 5.0;
  double area = pi * radius * radius;
  print("Area of the circle: $area");

  // Booleans
  bool myBool = false;
  print("Boolean: $myBool");

  // Dynamic
  //Dynamic in Dart is a type that indicates the value of a variable can be of any type at runtime. It provides flexibility in programming, allowing you to create variables without specifying a static type.
  dynamic fullName2 = "John Elder";
  print(fullName2);
}

void lists() {
  // Lists
  var myList = [1, 2, 3];
  print(myList);
  print(myList[0]);

  // Change an item

  myList[0] = 41;
  print(myList);

  // Create an empty list
  var emptyList = [];

  // Add to empty List

  emptyList.add(41);

  // Add to multiple empty list
  emptyList.addAll([1, 2, 3, 4, 5, 6]);
  print(emptyList);

  // insert at specific position
  myList.insert(3, 3);
  print(myList);

  // insert many

  // remove from list

  // remove from specific location
}

void maps() {
  // Maps! key/value pairs
  var toppings = {"john:": "peppi", "mary": "cheest"};
  print(toppings);

  // shows
  print(toppings.values);
  // keys
  print(toppings.keys);
  // show length
  print(toppings.length);

  // add something
  toppings["tim"] = "sausage";

  // add many things
  toppings.addAll({'Tina': "backon", "steve": "supreme"});

  // remove

  toppings.clear();
  print(toppings);
}

void loops() {
  // For Loop
  var num = 5;
  for (var i = num; i >= 1; i--) {
    print(i);
  }

  // For in Loop
  var names = ["john", "tina", "steve"];
  for (var name in names) {
    print(name);
  }

  // While Loop
  while (num >= 1) {
    print(num);
    num--;
  }
}

void dartLogic() {
  // logic
  // if, if/else. if else if
  var num = 5;
  if (num == 5) {
    print('the number is 5!');
  } else if (num == 3) {
    print('The number is 3');
  } else {
    print('The number is not 5!');
  }
}

void dartFunctions() {
  myFunc(String name, {lastName = "smith"}) {
    return "hello $name $lastName";
  }

  var myThing = myFunc("john", lastName: "connor");
  print(myThing);

  var myThing2 = myFunc("john");
  print(myThing2);
}

void userInput() {
  print('Enter Your Name: ');

  // allow the user to enter their name

  var name = stdin.readLineSync();

  print("hello $name");
}

void classes() {
  // create person class

  Person p1 = Person("John", "male", 44);
  p1.showData();
}

class Person {
  String? name, sex;
  int? age;
  // Constructors
  Person(String name, sex, int age) {
    this.name = name;
    this.sex = sex;
    this.age = age;
  }
  // Methid

  void showData() {
    print('Name = $name');
    print('sex = $sex');
    print('age = $age');
  }
}
