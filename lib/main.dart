import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Testing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController stringController;

  String reversedString = "";
  @override
  void initState() {
    stringController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    stringController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Testing Demo'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextField(
              controller: stringController,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(reversedString),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  reversedString =
                      stringController.text.split('').reversed.join('');
                });
              },
              child: const Text(
                "Reverse",
              ),
            )
          ],
        ),
      ),
    );
  }
}
