// @dart=2.9
import 'dart:developer';

import 'package:flutter/material.dart';

import 'bowlard.dart';
import 'bowlard_solo.dart';
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
              //ボーラード（バトル）
              top: 20.0,
              width: 300.0,
              height: btnSize,
              child: Button01(),
            ),
            Positioned(
              //ボーラード（１人用）
              top: 100.0,
              width: 300.0,
              height: btnSize,
              child: Button02(),
            ),
            Positioned(
              //カットオフ
              top: 180.0,
              width: 300.0,
              height: btnSize,
              child: Button03(),
            ),
            Positioned(
              //広告
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

//ボーラード（バトル）ボタン
class Button01 extends StatelessWidget {
  const Button01({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('ボーラード（バトル）', style: TextStyle(fontSize: 24)),
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

//ボーラード（１人用）ボタン
class Button02 extends StatelessWidget {
  const Button02({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('ボーラード（１人用）', style: TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[200],
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const BowlardSolo();
        }));
      },
    );
  }
}

//cutoffボタン
class Button03 extends StatelessWidget {
  const Button03({Key key}) : super(key: key);

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
