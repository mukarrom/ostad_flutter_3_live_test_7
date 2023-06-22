import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  int counter;
  SecondScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Text('Congratulations! You reached $counter!'),
      ),
    );
  }
}
