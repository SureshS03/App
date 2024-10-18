import 'package:flutter/material.dart';

void main() {
  runApp(TestApp()); // Main function is where program is started
}

class TestApp extends StatelessWidget { //used StatelessWidget(which is static) for my root Widget
  const TestApp({super.key}); // const because only one time

  @override //override for new
  Widget build(BuildContext context) { //build a widget and return a Materialapp which have basic things of app like title theme etc..
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Justvy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(), // intisalize my home page with a new class

    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Justvy'),
      backgroundColor: Colors.white70,
      shadowColor: Colors.grey,
      //centerTitle: true,
      shape: Border.all(width: 3.0, color: Colors.grey),
    ),
    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      //margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.green, Colors.blue],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Hello There, welcome to Justvy',style: TextStyle(fontSize: 20.0)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/img.jpeg')
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Text('To Contact us :-',style: TextStyle(fontSize: 20.0)),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Mail Adress',
              ),
            )
          ],
        ),
        ],
      )
    ),
  );
  }
}
