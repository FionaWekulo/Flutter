import 'package:flutter/material.dart';

/*
//data types
//numbers
int number = 2;
double decimal = 4.5;
//letters
String letter = "fiona";
//boolean
bool state = false;
//list
List array = [0, 1, 2, 3];

//functions
String getfullname(String firstName, String lastname) {
  return '$firstName $lastname'; //INterpolation
  //return firstName + ' ' + lastname;
}

String myFavoriteNumber(int fave) {
  return ' ';
}

String addition(int nums, int deci) => '$nums + $deci';*/
void main() {
  runApp(const MyApp());
}

/*void test(/*String? first, String? middle, String? last*/) {
  /*
  //if else
  //final name = 'foo'; //can never be changed once initialised
  const name = 'foo';
  if (name == 'foo') {
    print("Yes, this is foo.");
  } else if (name == 'bar') {
    print("No, this is not foo.");
  } else {
    //print("I don't know what this is.");
    print('I don\'t know what this is.');
  }*/

/*
  //operators
  var age = 20;
  print(age);
  //INFIX OPERATORS
  double halfAge = age / 2;
  print(halfAge);
  int doubleAge = age * 2;
  print(doubleAge);

  //PREFIX OPERATORS
  int ageMinusOne = --age;
  print(ageMinusOne);
  int agePlusOne = ++age;
  print(agePlusOne);

  //LOGICAL OPERATORS
  //==
  //=>
  //<=
  //!=
  */

/*
  //LISTS-a collection of homogenous things
  List names = ["fiona", "annette", "betty","betty"];
  int length = names.length;
  print(length);
  names.add("agnes");
  print(names);
  */

  /*//SETS-a collection of unique things
  var setValues = {"foo", "bar", "baz", 1, 5.6};
  print(setValues);
  setValues.add("foo");
  print(setValues);
  */

  /*
  //MAPS-HOLD KEY-VALUE PAIRS OF INFORMATION
  var person = {'age': 20, 'name': 'fiona'};//keys need to be unique
  print(person);
  */

  /*
  //SOUND NULL-SAFETY
  //MAKING A DATA TYPE NULLABLE
  //String? name = null;
  String? name;
  print(name);
  name = 'foo';
  print(name);

  List<int>? numbers;//list can be null but cant have null values
  print(numbers);
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(numbers);
  
  List<String?>? letters;//list can be null and can have null values
  letters = ['one', 'two',null];
  print(letters);
  */

  /*
  //??operrator- checks if left operand is null then right 
  const String? first = null;
  const String? middle = null;
  const String? last = 'baz';

  const firstNonNullValue = first ?? middle ?? last;
  print(firstNonNullValue);
  */

  /*
  // null-aware operator
  String? name = first;
  name ??= middle;
  print(name);
  */
}
/*
//conditional invocation
void trial(List<String>? names) {
  final length = names?.length ?? 0;
  print("The length of the list is " '$length');
}*/

//enumerations-named list of related items
enum PersonProperties {
  firstName,
  lastName,
  age;
}

enum AnimalType {
  cat,
  dog,
  bunny;
}*/

/*void test2(AnimalType animalType) {
  switch (animalType) {
    case AnimalType.bunny:
      print('bunny');
      break;
    case AnimalType.cat:
      print('cat');
      break;
    case AnimalType.dog:
      print('dog');
  }
  print('FUNCTION IS FINISHED');
}

void makeSureThisIsaCat(AnimalType animalType) {
  if (animalType != AnimalType.cat) return;//Rest of lines will only execute if cat
}*/

/*class Person {
  //definition of attributes and functions of a thing
  final String name;
  //constructors-allow to create an instance of a class with optional parameters
  Person(this.name);

  void printName() {
    //method, functions in a class
    print(name);
  }

  void run() {
    print('running');
  }

  void breathe() {
    print('breathing');
  }
}*/

/*abstract class LivingThing {
  void breathing() {
    print('Every living thing breathes');
  }

  void moving() {
    print('I am moving');
  }
}

//abstract classes cant be instantiented, their functionalities are simply to be used by others
//inheritance and subclassing
//avoid repetition by using attributes from another class
class Cat extends LivingThing {}

void test3() {
  //final person = Person('foo bar'); //object - instance of the thing, eample
  // print(person.name);
  //person.printName();
  //person.run();

//inheritance
  final fluffers = Cat();
  fluffers.breathing();

//abstract classes
  //final thing = LivingThing();//gives error

}*/

/*class Cat {
  final String name;
  Cat(this.name); //normal constructor
  //factory constructors-can return instances that are not of same class
  // factory Cat.fluffBalls() {
  // return Cat('Fluff Ball');
//  }

  @override
  bool operator ==(covariant Cat other) => other.name == name;
  @override
  int get hashCode => name.hashCode;
}

void test4() {
  //final fluffBall = Cat('Fluff ball'); //calling constructor
//print(fluffBall.name);

  //final fluffBal = Cat.fluffBalls();//calling factory constructor
  //print(fluffBal.name);

  //CUSTOM OPERATORS
  final cat1 = Cat('foo');
  final cat2 = Cat('foo');
  if (cat1 == cat2) {
    print('They are equal');
  } else {
    print('They are not equal');
  }
}*/

/*class Cat {
  final String name;
  Cat(this.name);
}

extension Run on Cat {
  //extensions-adding logic to existing classes

  void run() {
    print('Cat $name is running');
  }
}

class Person {
  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName);
}

extension Fullname on Person {
  String get fullname => '$firstName $lastName';
}

void advanced() {
  final meow = Cat('fluffers');
  print(meow.name);
  meow.run();

  final foo = Person('FOO', 'BAR');
  print(foo.firstName);
  print(foo.lastName);
  print(foo.fullname);
}*/
/*
//asynchronous
//future- data returned in the future
//async/await-mechanism for controlling asynchronous flow of data
Future<int> heavyFutureThatMultipliesByTwo(int a) {
  return Future.delayed(const Duration(seconds: 3), () => a * 2);
}

void future() async {
  //async marks a function telling that it wont return a value immediately
  final result = await heavyFutureThatMultipliesByTwo(10);//await- waits for the result then returns it
  print(result);
}*/

/*
//Stream-pipe of data
Stream<String> getName() {
  // return Stream.value('Foo');
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  });
}

void stream() async {
  await for (final value in getName()) {
    print(value);
  }
  print('Stream finished working');
}
*/
/*
//GENERATORS-generating iterables, marked with sync and async
Iterable<int> getOneTwoThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void generate() {
  for (final value in getOneTwoThree()) {
    print(value);
    if (value==2){
      break;
    }
  }
}
*/
//GENERICS-AVOID REWRITING SIMILAR CODE
class PairofStrings {
  final String value1;
  final String value2;

  PairofStrings(this.value1, this.value2);
}

class PairofIntegers {
  final int value1;
  final int value2;

  PairofIntegers(this.value1, this.value2);
}

class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}

void generics() {
  final names = Pair('foo', 'bar');
  print(names);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //print(getfullname('Foo', 'Bar'));
    //print(addition(2, 5));
    //test(null, 'bar', 'baz');
    // trial([]);
    //test2(AnimalType.cat);
    //test3();
    //test4();
    //advanced();
    //future();
    //stream();
    //generate();
    generics();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
