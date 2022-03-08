// @dart=2.9
import 'dart:developer';

import 'package:flutter/material.dart';

import 'bowlard.dart';
import 'cutoff.dart';
import 'header.dart';
import 'nend.dart';

//メイン
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    log("Debug-Main Start");
    const double btnSize = 60;
//    double tate = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: const Header(),
        body: Stack(
          alignment: Alignment.center,
          children: const [
            Image(image: AssetImage('images/top2.jpg'), fit: BoxFit.cover),
            Positioned(
              top: 20.0,
              width: 300.0,
              height: btnSize,
              child: Button01(),
            ),
            Positioned(
              top: 100.0,
              width: 300.0,
              height: btnSize,
              child: Button02(),
            ),
            Positioned(
              bottom: 0.0,
              child: KoukokuNend(),
            ),
          ],
          fit: StackFit.expand,
        ),
      ),
    );
  }
}

//ボーラードボタン
class Button01 extends StatelessWidget {
  const Button01({Key key}) : super(key: key);

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

//3球取り切りボタン
class Button02 extends StatelessWidget {
  const Button02({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('cutoff', style: TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[200],
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const CutOff();
        }));
      },
    );
  }
}
