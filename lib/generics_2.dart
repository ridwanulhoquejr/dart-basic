class Student<T> {
  final T? name;

  Student(this.name);

  T? getName() {
    return name;
  }

  void showType() {
    print("The type of Student is $T type");
  }
}
