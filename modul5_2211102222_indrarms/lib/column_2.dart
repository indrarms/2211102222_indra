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
        appBar: AppBar(title: const Text("Column Example")),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('We move under cover and we move as one'),
              Text('Through the night, we have one shot to live another day'),
              Text('We cannot let a stray gunshot give us away'),
              Text('We will fight up close, seize the moment and stay in it'),
              Text('It’s either that or meet the business end of a bayonet'),
              Text('The code word is ‘Rochambeau,’ dig me?'),
              SizedBox(height: 10),
              BigText(text: 'Rochambeau!'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigText extends StatelessWidget {
  final String text;
  const BigText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
    );
  }
}
