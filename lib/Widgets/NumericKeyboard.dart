import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Numeric Keyboard Example'),
        ),
        body: const Center(
          child: NumericKeyboard(),
        ),
      ),
    );
  }
}

class NumericKeyboard extends StatelessWidget {
  final List<String> _keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];

  const NumericKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text(
                      key,
                      style: const TextStyle(fontSize: 24),
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
