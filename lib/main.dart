import 'package:flutter/material.dart';
import 'HomePage/home_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capstone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Center( child: MyHomePage(title: 'Home')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _CarHomePage();
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color(0xFFb2c9d6),
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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

class _CarHomePage extends State<MyHomePage>{

  void _createNewCar(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          const Center(
            child:
                Padding(
                      padding: EdgeInsets.fromLTRB(5, 70, 5, 20),
                      child:
                        Text(
                          'Car Name',
                          style:
                            TextStyle(
                            fontSize: 50,
                            ),
                      )
                ),
          ),
          Center(
             child: 
                Padding(
                  padding: EdgeInsets.fromLTRB(50,5,50, 30),
                    child:
                      Image.asset('assets/images/car_test_image.jpg')
                ),
          ),
          const Center(
            child:
            Padding(
              padding: EdgeInsets.all(20),
              child:
                Text(
                    "Description of Car",
                    style: TextStyle(
                      fontSize: 20
                    ),
                )
            ),
          ),
          const Center(
            child:
            Padding(
              padding: EdgeInsets.fromLTRB(50,5,50, 30),
              child:
                Text(
                  "Problems With Car",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
            ),
          ),
          Center(
            child:
                FloatingActionButton.extended(
                    onPressed: _createNewCar,
                    tooltip: 'Create Car',
                  label:
                    const Text(
                      'Create Car'
                    ),
                )
          )
        ]
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFb2c9d6),
        child:
          const HomeBottomNav()
      ),
    );



  }
}
