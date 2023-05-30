class StreamExample {
  Stream<int> countStream(int to) async* {
    for (int i = 1; i <= to; i++) {
      await Future.delayed(
        Duration(seconds: 1),
      );
      yield i;
    }
  }
}
