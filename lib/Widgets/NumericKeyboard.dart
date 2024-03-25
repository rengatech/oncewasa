import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Numeric Keyboard Example'),
        ),
        body: Center(
          child: NumericKeyboard(),
        ),
      ),
    );
  }
}

class NumericKeyboard extends StatelessWidget {
  final List<String> _keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 3,
        children: _keys
            .map(
              (key) => InkWell(
                onTap: () {
                  // handle key press
                  print('Pressed key: $key');
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text(
                      key,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
