void main(List<String> arguments) {
  // ----------- Generics naming convention ----------- //

  // <E> -> Element, usually used for collections
  // <K, V> -> Key, Value, usually used for maps
  // <T> -> Type, usually used for type arguments
  // <S> -> Source, usually used for streams

  final double doubleValue = eitherIntOrDouble(); // call side defines the type
  print(doubleValue);

  final int intValue = eitherIntOrDouble(); // call side defines the type
  print(intValue);

  // example 2: Type matching
  print(doTypeMatch(1, 1.1));
  print(doTypeMatch(1, 1));
  print(doTypeMatch(1, 'Hello '));

  // example 3: Exisiting data types to generic types
  const JSON<String> json = {
    // this is call side type definition -> <String>, here we are saying that the value of the map is a string
    // which is generic type of <T> in the typedef
    // so basically, whatever type we define here, will be the type of the value of the map <T>
    'name': 'Ridwan',
    'address': 'Katalganj',
  };

  // example 4: Generic method
  final List<int> list = <int>[1, 2, 3, 4, 5];
  final List<String> list1 = <String>['h', 'j'];
  print(Utils.getItem(list, 0));
  print(Utils.getItem(list1, 0));

  // stack implementation
  final Stack<int> intStack = Stack<int>(); // call side defines the type

  intStack.push(1);
  intStack.push(2);
  intStack.push(3);
  intStack.push(4);
  intStack.push(1);
  intStack.canPop ? intStack.pop() : print('Stack is empty');
  print(intStack.printStack());

  // string stack
  final Stack<String> stringStack = Stack<String>();

  stringStack.push('Hello');
  stringStack.push('World');
  stringStack.push('!');
  stringStack.canPop ? stringStack.pop() : print('Stack is empty');
  print(stringStack.printStack());
}

// example 1:
// create a function that returns a int or double
T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not a valid type');
  }
}

// example 2: Type matching
bool doTypeMatch<L, R>(L a, R b) => a == b;

// example 3: Exisiting data types to generic types
// We enforce all the
typedef JSON<V> = Map<String, V>;

// example 4: Generic method
class Utils {
  // in this case, we can pass any type of list and we can get the item from the list
  // this is called generic type means, it will applicable for any type of list
  // keep in mind, we have to declare <T>  type after the method name, otherwise it will not recognise the return type T
  static T? getItem<T>(List<T> list, int index) =>
      list.asMap().containsKey(index) ? list[index] : null;
}

// implementing stack using generics

class Stack<T> {
  final List<T> _stack = <T>[];

  // in stack we have two operations:
  // 1. push
  // 2. pop

  // if the stack is empty, then we are able to pop
  bool get canPop => _stack.isNotEmpty;
  int get length => _stack.length;

  void push(T item) {
    // implement the item if it is not already in the stack
    if (!_stack.contains(item)) {
      _stack.add(item);
    } else {
      print(
          'Duplicate item cannot be pushed in the stack, the item: $item is already exist in the stack');
    }
  }

  T pop() {
    // first we
    final T last = _stack.last;
    print('the last item is popped: $last');
    _stack.removeLast();
    return last;
  }

  printStack() {
    print(_stack);
  }
}
