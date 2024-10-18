import 'package:flutter/material.dart';

void main() {
  runApp(Layout());
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Row( //Separate the container into two box (left & right)
              children: <Widget>[
                Expanded( //left side
                  flex: 1,
                  child: Column( //Separate the left side into two box (top & bottom)
                    children: [
                      Expanded( //top side
                        flex: 2,
                        child: Row( //Separate the top side into two box (left & right)
                          children: [
                            Expanded( //left side
                              flex: 1,
                              child: Column( //Separate the left side into two box (top & bottom)
                                children: [
                                  Expanded( //top side
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded( //bottom side
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded( //right side
                              flex: 1,
                              child: Column( //Separate the right side into two box (top & bottom)
                                children: [
                                  Expanded( //top side
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded( //bottom side
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.teal,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded( //bottom side
                        flex: 1,
                        child: Container( //Separate the bottom side into one box
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Same comment as above , but this is for the right side and have different flex value
                Expanded( //right side
                  flex: 1,
                  child: Column( //Separate the right side into two box (top & bottom)
                    children: [
                      Expanded( //top side
                        flex: 1,
                        child: Row( //Separate the top side into two box (left & right)
                          children: [
                            Expanded( //left side
                              flex: 1,
                              child: Column( //Separate the left side into two box (top & bottom)
                                children: [
                                  Expanded( //top side
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded( //bottom side
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.brown,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded( //right side
                              flex: 1,
                              child: Column( //Separate the right side into two box (top & bottom)
                                children: [
                                  Expanded( //top side
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded( //bottom side
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        border: Border.all(width: 1, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded( //bottom side
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
