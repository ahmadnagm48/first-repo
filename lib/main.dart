import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloWorldScreen(),
    );
  }
}

class HelloWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.alarm),
        centerTitle: true,
        title: Text('Hello World'),
        actions: [
          Icon(Icons.accessibility),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
            child: Center(
              child: Container(
                width: 300,
                height: 400,
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 50,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.purple,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 50,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.purple,
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 135,
                      child: Container(
                        width: 30,
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 50,
                      right: 50,
                      child: Container(
                        height: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: const Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: const Icon(
                Icons.add_card,
                color: Colors.white
              ),
              ),
            ),
        ],
      ),
    );
  }
}
