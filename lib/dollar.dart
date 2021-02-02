import 'package:flutter/material.dart';

class Dollar extends StatelessWidget {
  final Function(double) onDollarChange;

  Dollar({@required this.onDollarChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('\$50'),
              onPressed: () {
                Navigator.pop(context);
                onDollarChange(50);
              },
              color: Colors.blue,
            ),
            FlatButton(
              child: Text('\$100'),
              onPressed: () {
                Navigator.pop(context);
                onDollarChange(100);
              },
              color: Colors.blue,
            ),
            FlatButton(
              child: Text('\$1500'),
              onPressed: () {
                Navigator.pop(context);
                onDollarChange(1500);
              },
              color: Colors.blue,
            ),
            FlatButton(
              child: Text('\$20'),
              onPressed: () {
                Navigator.pop(context);
                onDollarChange(20);
              },
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
