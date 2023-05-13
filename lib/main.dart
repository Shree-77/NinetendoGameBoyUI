import 'package:flutter/material.dart';
import 'package:poke/Buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void moveUp() {}
  void moveDown() {}
  void moveLeft() {}
  void moveRight() {}
  void pressedA() {}
  void pressedB() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.black,
              )),
          Expanded(
              child: Container(
            color: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 20, 10),
                      child: Row(
                        children: [
                          Text(
                            'Ninetendo',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' G A M E B O Y',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                ),
                                MyButton(
                                  text: '←',
                                  function: moveLeft,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                MyButton(
                                  text: '↑',
                                  function: moveUp,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                ),
                                MyButton(
                                  text: '↓',
                                  function: moveDown,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                ),
                                MyButton(
                                  text: '→',
                                  function: moveRight,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                    ),
                                  ],
                                ),
                                MyButton(
                                  text: 'b',
                                  function: pressedB,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        MyButton(
                                          text: 'a',
                                          function: pressedA,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      'C R E A T E D B Y S H R E E',
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
            ),
          ))
        ],
      ),
    );
  }
}
