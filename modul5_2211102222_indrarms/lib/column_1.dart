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
          child: Column(
            children: const <Widget>[
              Text('Deliver features faster'),
              Text('Craft beautiful UIs'),
              Expanded(
                child: FittedBox(fit: BoxFit.contain, child: FlutterLogo()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
