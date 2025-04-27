import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              const FlutterLogo(size: 30),
              const Expanded(
                child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, add "
                  "features, and fix bugs faster. Experience sub-second reload times, without losing state, "
                  "on emulators, simulators, and hardware for iOS and Android.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
