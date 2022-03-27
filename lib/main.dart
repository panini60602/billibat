// @dart=2.9
import 'dart:developer';

import 'package:flutter/material.dart';

import 'bowlard.dart';
import 'bowlard_solo.dart';
import 'cutoff.dart';
import 'header.dart';
import 'nend.dart';
import 'scoreData.dart';

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
    const double btnSize = 50;
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
              //ボウラード（バトル）
              top: 20.0,
              width: 300.0,
              height: btnSize,
              child: Button01(),
            ),
            Positioned(
              //ボウラード（１人用）
              top: 80.0,
              width: 300.0,
              height: btnSize,
              child: Button02(),
            ),
            Positioned(
              //カットオフ
              top: 140.0,
              width: 300.0,
              height: btnSize,
              child: Button03(),
            ),
            Positioned(
              //スコア記録
              top: 200.0,
              width: 300.0,
//              bottom: 60.0,
              height: btnSize,
              child: ButtonScore(),
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

//ボウラード（バトル）ボタン
class Button01 extends StatelessWidget {
  const Button01({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('ボウラード（バトル）', style: TextStyle(fontSize: 24)),
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

//ボウラード（１人用）ボタン
class Button02 extends StatelessWidget {
  const Button02({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('ボウラード（１人用）', style: TextStyle(fontSize: 24)),
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

//スコアデータボタン
class ButtonScore extends StatelessWidget {
  const ButtonScore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('スコアデータ', style: TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
        primary: Colors.yellow[100],
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const scoreData();
        }));
      },
    );
  }
}
