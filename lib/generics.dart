// give me a generic example
// of a class that can be used with any type

class GenericClass<T> {
  //
  // here we declare our Class with a trailing <T> to indicate that it is a generic class
  // so, we can declare its variables and methods with the generic type T
  //

  T? type;

  GenericClass(T x) {
    type = x;
  }

  T? getType() {
    return type;
  }

  void showType() {
    print("Type of T is $T");
  }
}
