import 'package:flutter/material.dart';
import 'package:live_test_7/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter value:'),
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            // counter++;
                            // setState(() {});
                            _incrementCounter(context);
                          },
                          child: const Icon(Icons.add))),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        counter--;
                        setState(() {});
                      },
                      child: const Icon(Icons.remove),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// incrementCounter function
  void _incrementCounter(BuildContext context) {
    counter++;
    if (counter == 5) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Counter Alert',
              style: TextStyle(fontSize: 26),
            ),
            content: Text('Counter value is $counter!'),
            actions: [
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    setState(() {});
    if (counter == 10) {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => SecondScreen(counter: counter)));
    }
  }
}
