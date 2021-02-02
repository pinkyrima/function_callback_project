import 'package:flutter/material.dart';
import 'package:function_callback_project/dollar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double dollar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Text('\$$dollar')),
          Positioned(
            child: FlatButton(
              child: Text("Donate Money"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Dollar(onDollarChange: (value) {
                      setState(() {
                        dollar += value;

                      });
                    }),
                  ),
                );
              },
              color: Colors.green,
            ),
            bottom: 16,
            left: 20,
            right: 20,
          )
        ],
      ),
    );
  }
}
