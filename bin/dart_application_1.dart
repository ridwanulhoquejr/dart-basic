import 'package:dartz/dartz.dart';

void main(List<String> arguments) async {
  Either<int, String> response = Right('Hello World');
  // it will assign the value of the right side to the variable but left side will be empty

  response.fold(
    (left) => print('left side value: $left'),
    (right) => print('right side value: $right'),
  );

  /*
    The fold method here is responsible for handling both the values, 
    if the left value is available, it will call the first callback method print('left side value : $left) , 
    otherwise, it will call the second callback print('Right' : $right)
  */

  Person validResponse = Person('Saravana');
  Failure failedReponse = Failure('something went wrong');
  Response myResponse = Response(validResponse);

  myResponse.person.fold(
    (left) => print('left side value or failed: $left'),
    (right) => print('right side value or Succes: $right'),
  );
}

// dartz either class

class Response {
  Either<Failure, Person> person;

  Response(dynamic res) {
    if (res is Failure) {
      person = Left(res);
    } else if (res is Person) {
      person = Right(res);
    }
  }
}

class Person {
  String name;
  Person(this.name);
}

class Failure {
  String message;
  Failure(this.message);
}
