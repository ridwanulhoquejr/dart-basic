class AsyncAwaitExample {
  // Asynchronous function basically, doing something in the background without blocking the main thread
  // for example, fetching data from the internet, reading a file, etc.
  //
  // in this example, we are using Future.delayed() 3 seconds and printing a message in `main` function withing 3 seconds
  // so, the main thread is not blocked, it is executing the code in parallel with the `giveMeSomeTime` function
  //
  void giveMeSomeTime() async {
    print('I am doing something, please wait...');
    await Future.delayed(Duration(seconds: 3));
    print('I am done!');
  }
}
