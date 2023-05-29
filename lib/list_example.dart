class ListExample {
  List<int> marks = [10, 20, 30, 40, 50];

  void listOperation([int? value]) {
    if (value != null) {
      marks.add(value);
    }

    print(marks);

    //! where() method
    // wehere() is a method that takes a function as an argument
    // and returns a new list with the elements that satisfy the condition
    final filteredMarks = marks.where((element) => element > 20).toList();
    print(filteredMarks);
  }
}
