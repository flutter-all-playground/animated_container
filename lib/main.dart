import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(254, 18, 32, 45),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Row(
            children: [
              Container(alignment: Alignment.center),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: _selected ? 200 : 100,
                width: _selected ? 200 : 100,
                alignment: _selected ? Alignment.topLeft : Alignment.bottomRight,
                decoration: BoxDecoration(
                  color: _selected ? Colors.redAccent : Colors.deepPurple,
                  borderRadius: BorderRadius.circular(_selected ? 100 : 10),
                  // shape: _selected ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
