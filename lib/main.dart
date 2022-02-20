import 'package:billibat/header.dart';
import 'package:flutter/material.dart';

import 'bowlard.dart';

//メイン
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: const Header(),
          body: Stack(
            alignment: Alignment.center,
            children: const [
              Image(image: AssetImage('images/top2.jpg'), fit: BoxFit.cover),
              Positioned(
                top: 20.0,
                width: 300.0,
                height: 50.0,
                child: Button01(),
              ),
            ],
            fit: StackFit.expand,
          )),
    );
  }
}

class Button01 extends StatelessWidget {
  const Button01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('ボーラード', style: TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[200],
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const Bowlard();
        }));
      },
    );
  }
}
