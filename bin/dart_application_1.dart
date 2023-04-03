void main(List<String> arguments) {
// ----------------- Closuer ----------------- //

  // closure
  // closure is a function that has access to the parent scope, even after the scope has closed

  // example
  var car = makeCar("BMW"); // this will return a function
  print(car("M3")); // this is closure parameter
  print(car(null)); // this is closure parameter

  var car1 = makeCar();
  print(car1('m4')); // this will return a function

  // call the interface class by creating an object
  UserRepository userRepo = UserRepository();
  userRepo.update();
  userRepo.anotherMethod();

  // call the mixin class by creating an object

  AllAnimal allAnimal = AllAnimal();
  allAnimal.eat();
  allAnimal.flutter();
  allAnimal.walk();

  // call the extension

  print('adding with extension: ${1.add10()}');
  print('random number with extension: ${'random'.randomNumber}');
}

// closure
String Function(String?) makeCar([String? make]) {
  // optional parameter
  // this makeCar function will return a function that takes a string as a parameter
  var engine = "V8";
  return (model) => "$make $model $engine";
}

// ----------------- Interfaces ----------------- //
abstract class UserRepositorInterface {
// this is a interface
// means that this class can only be extended
// and not instantiated
// this is more like a contract, where the abstract methods must be implemented

// this is more like pydantic Base Model
  void save(); // this is a abstract method
  void delete();
  void update();
  void find();
}

// another interface
abstract class AnotherInterface {
  void anotherMethod() {}
}

class UserRepository implements UserRepositorInterface, AnotherInterface {
  // in this class we are implementing the abstract methods
  // so we have to have overriding all the behaviors of the interface, no other option
  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void find() {
    // TODO: implement find
  }

  @override
  void save() {
    // TODO: implement save
  }

  @override
  void update() {
    // TODO: implement update
    print('I am in update method');
  }

  @override
  void anotherMethod() {
    // TODO: implement anotherMethod
    print('I am in another interface');
  }
}

// ----------------- Mixins ----------------- //

class Animal {
  // Mixins are like a interface, but it can be used with multiple inheritance
  // but dont have to implement all the methods and properties unlike interfaces

  void eat() {
    print('All Animals are eating');
  }

  void sleep() {
    print('All Animals are sleeping');
  }
}

mixin Bird {
  void flutter() {
    print('Bird can fluttering');
  }

  void fly() {
    print('Bird can fly');
  }
}

mixin Fish {
  void swim() {
    print('Fish can swim');
  }
}

mixin Human {
  void walk() {
    print('Human can walk');
  }
}

mixin Mammal {
  void walk() {
    print('Mammal can run');
  }
}

class AllAnimal extends Animal with Bird, Fish, Mammal, Human {
  // if there are any DDD conflicts, then the last one will be used
  // in this case, the Human class will be used
  // because it is closest to the AllAnimal class

  /* 
    Animal is the super class of AllAnimal, hence it will be top of the herarchy. Also the  mixin class will be at the bottom of the herarchy
    but as a properties of super class.

    So, the herarchy will be like this:
    1. Animal
    2. Bird
    3. Fish
    4. Mammal
    5. Human
    6. AllAnimal

    so, if any DDD conflicts, then the last one will be used because it is closest to the AllAnimal class

  */
}

// ----------------- Extension ----------------- //

extension IntegerExtension on int {
  int add10() => this + 10;
  // this refers to the `int` which is the receiver of the extension
  // 5.add10() => 5 + 10 => 15  // here 5 is the `this`
}

extension RandomX on String {
  int get randomNumber => 47;
}
