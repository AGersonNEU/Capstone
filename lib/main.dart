import 'package:capstone/CarCreatePage/car_create_main_page.dart';
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

class _CarHomePage extends State<MyHomePage>{

  void _createNewCar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarCreatePage())
    );
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
