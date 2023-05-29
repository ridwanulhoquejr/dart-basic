import 'package:dart_basics/dart_basics.dart' as dart_basics;
import 'package:dart_basics/generics.dart' as generics;
import 'package:dart_basics/generics_2.dart' as generics2;
import 'package:dart_basics/list_example.dart' as lst;
import 'package:dart_basics/map_example.dart' as mapE;

void main(List<String> arguments) {
  print('Hello world: ${dart_basics.calculate()}!');
  print('10 / 3 = ${dart_basics.divide(10, 3)}');

//! Generics
  generics.GenericClass<int> intGenericClass = generics.GenericClass<int>(10);
  intGenericClass.showType();

  generics.GenericClass<String> stringGenericClass =
      generics.GenericClass<String>('Hello');
  stringGenericClass.showType();

  generics2.Student<int> intStudentClass = generics2.Student<int>(10);
  generics2.Student<String> stringStudentClass =
      generics2.Student<String>('Ridwan');

  intStudentClass.showType();
  stringStudentClass.showType();

  //! List Example

  lst.ListExample listExample = lst.ListExample();
  listExample.listOperation(60);

  // ! Map Example
  mapE.MapExample mapExample = mapE.MapExample();
  mapExample.mapOperation();

  mapExample.listOfMap();
}
