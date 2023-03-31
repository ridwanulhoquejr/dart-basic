import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  print('My Name is : Ridwanul Haque');

  // dart list
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // list methods

  // add
  list.add(11);
  print(list);

  // addAll
  list.addAll([12, 13, 14, 15]);
  print(list);

  // insert
  list.insert(0, 0);
  print(list);

  // fold
  var sum = list.fold(0, (previous, element) => previous + element);
  // explanation
  // 0 is the initial value
  // previous is the previous value
  // element is the current value

  // what is fold?
  // fold is a method that takes a list and reduces it to a single value

  // so, do reduce and fold are the same?
  // yes, they are the same

  print(sum);

  // where
  // declarative way of doing the same thing
  print(list.where((element) => element % 2 == 0).toList());

  // imperative way of doing the same thing
  List<int> evenList = [];
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      evenList.add(list[i]);
    }
  }

  // spread operator
  // spread operator is used to spread the elements of a list
  // into another list
  List<int> list2 = [11, 12, 13, 14, 15];

  print([...list, ...list2]);

  // null aware acces operator
  int? a;
  a = null;

  print(a
      ?.isEven); // this will not throw an error, just return null when the variable is null
  // print(a!.isEven); // this will throw an error when the variable is null

  // so we use !. when we are 100% sure that the variable is not null

  // spread operator for sorting a list
  List<int> list3 = [99, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print([...list3]..sort());

  // spread operator null aware
  List<int?>? list4 = [21, 11, null];

  print([list3, ...?list4]); // this will not throw an error
  // ..? only add the list if it is not null

  // we can also use list initialization with condition
  bool isAdd = true;
  List<int> conditionalList = [
    99,
    100,
    101,
    if (isAdd) 102,
  ];
  print("The 102 is added because isAdd is -> True $conditionalList");

  // Function
  var add = additon; // additon will reference to the additon function

  // call the second function, which takes a function as a parameter and two parameters
  // so we can pass the additon function referes -> add as a parameter
  second(add, 10, 20);

  // annonymous function
  List<String> names = [
    'Ridwanul',
    'Haque',
  ];

  // lets say we want to upperCase all the names in the list, in this case we can use map and annonymous function
  List<String> upperCaseNames =
      names.map((String name) => name.toUpperCase()).toList();

  print(upperCaseNames);

  // call class A:
  A()();
  // or we can do this
  var objectA = A();
  objectA();

  // ~/ is the integer division operator
  // it will return the integer value of the division
  print(10 ~/ 3);

  // % is the modulus operator
  // it will return the remainder of the division
  print(10 % 3);
}

void second(int Function(int, int) f, int a, int b) {
  print(f(a, b));
}

int additon(int a, int b) {
  return a + b;
}

// callable class
class A {
  // this is called a callable class
  // if we create a class and we want to call it like a function
  void call() {
    print("I am called");
  }
}
