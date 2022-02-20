import 'dart:developer';

import 'package:billibat/cutoff_buhin.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'koukoku.dart';

class CutOff extends StatefulWidget {
  const CutOff({Key? key}) : super(key: key);

  @override
  _MyCutOff createState() => _MyCutOff();
}

class _MyCutOff extends State<CutOff> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backButtonPress(context),
      child: Scaffold(
          appBar: const HeaderCutOff(),
          body: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < constraints.maxHeight) {
//            if (MediaQuery.of(context).size.width < MediaQuery.of(context).size.height) {
              return Stack(
                alignment: Alignment.center,
                children: const [
                  Positioned(
                    child: ScoreHyoTate(),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Koukoku(),
                  ),
                ],
                fit: StackFit.expand,
              );
            } else {
              return Stack(
                alignment: Alignment.center,
                children: const [
                  Positioned(
                    child: ScoreHyoYoko(),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Koukoku(),
                  ),
                ],
                fit: StackFit.expand,
              );
            }
          })),
    );
  }
}

Future<bool> _backButtonPress(BuildContext context) async {
  bool? answer = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('トップ画面に戻りますがよろしいですか？'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('キャンセル')),
            TextButton(
                onPressed: () {
                  score11 = "";
                  score12 = "";
                  score13 = "";
                  score14 = "";
                  score15 = "";
                  score21 = "";
                  score22 = "";
                  score23 = "";
                  score24 = "";
                  score25 = "";

                  //最初に戻る
                  selectPos = "11";
                  SetColor(selectPos);

                  //プレイヤー名のリセット
                  player1 = "プレイヤー１";
                  player2 = "プレイヤー２";
                  Navigator.of(context).pop(true);
                },
                child: const Text('OK'))
          ],
        );
      });

  return answer ?? false;
}

//スコア表(縦)
class ScoreHyoTate extends StatefulWidget {
  const ScoreHyoTate({Key? key}) : super(key: key);
  @override
  _MyScoreHyoTate createState() => _MyScoreHyoTate();
}

class _MyScoreHyoTate extends State<ScoreHyoTate> {
  Color selectColor = Colors.white;
  String bufPos = "";

  @override
  Widget build(BuildContext context) {
    log("画面縦-build-start");

    double tate = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    double masSize = tate / 14;
    double hyoSize = 10 + 20 + (masSize * 2);
    double koukokuSize = 50;

    double playerYokoSize = 0.38;
    double masYokoSize = 0.12;

    double ruleSize1 = 0.07;
    double ruleSize2 = 0.88;
    double rule1record = 25;

    double clearResetBtnSize = 70;

    //    double btnSize = (tate - hyoSize - koukokuSize) / btnDan;
    double btnSize = 0;
    if (MediaQuery.of(context).size.height < MediaQuery.of(context).size.width) {
      log("画面縦ロジックなのに実際は横画面になっている");
      btnSize = 10;
    } else {
      btnSize = (tate - hyoSize - koukokuSize - clearResetBtnSize - (rule1record * 5) - (20 * 4) - 40 - 20);
    }

    if (btnSize > 150) {
      btnSize = 120;
    }
    const double maruBatuSize = 40;

    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey[800],
      ),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.98,

          //タイトル
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * playerYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text(""),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("1"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("2"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("3"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("4"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("5"),
              ),
            ),
          ]),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.98,
          child: Column(children: [
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * playerYokoSize,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      final controller = TextEditingController();
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text("プレイヤー１の名前を入力してください"),
//                            content: Text("This is the content"),
                            content: TextField(
                              controller: controller,
                            ),
                            actions: [
                              TextButton(
                                child: const Text("キャンセル"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  setState(() {
                                    player1 = controller.text;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: masSize,
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                    ),
                    child: Text(player1),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.98 - playerYokoSize),
                child: Column(children: [
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "11";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color11,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score11),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "12";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color12,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score12),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "13";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color13,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score13),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "14";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color14,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score14),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "15";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color15,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score15),
                        ),
                      ),
                    ),
                  ]),
                ]),
              ),
            ]),
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * playerYokoSize,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      final controller = TextEditingController();
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text("プレイヤー２の名前を入力してください"),
//                            content: Text("This is the content"),
                            content: TextField(
                              controller: controller,
                            ),
                            actions: [
                              TextButton(
                                child: const Text("キャンセル"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  setState(() {
                                    player2 = controller.text;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: masSize,
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                    ),
                    child: Text(player2),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.98 - playerYokoSize),
                child: Column(children: [
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "21";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color21,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score21),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "22";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color22,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score22),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "23";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color23,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score23),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "24";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color24,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score24),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectPos = "25";
                          SetColor(selectPos);
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color25,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(score25),
                        ),
                      ),
                    ),
                  ]),
                ]),
              ),
            ]),
          ]),
        ),

        //ボタン
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: btnSize,
            child: Row(children: [
              //スコアボタン01
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 2) - 10),
                  child: ElevatedButton(
                    child: const Text('○', style: TextStyle(fontSize: maruBatuSize)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, maru);
                        selectPos = NextSelect(selectPos).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン02
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 2) - 10),
                  child: ElevatedButton(
                    child: const Text('✕', style: TextStyle(fontSize: maruBatuSize)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, batsu);
                        selectPos = NextSelect(selectPos).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),

        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(children: [
              //クリア
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(
                    width: (MediaQuery.of(context).size.width * 0.95 / 2) - 10,
                    height: clearResetBtnSize,
                  ),
                  child: ElevatedButton(
                    child: const Text('クリア', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ScoreClear(selectPos);
                      });
                    },
                  ),
                ),
              ),
              //リセット
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 2) - 10, height: clearResetBtnSize),
                  child: ElevatedButton(
                    child: const Text('リセット', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text("リセットしますがよろしいですか？"),
//                            content: Text("This is the content"),
                            actions: [
                              TextButton(
                                child: const Text("キャンセル"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  setState(() {
                                    score11 = "";
                                    score12 = "";
                                    score13 = "";
                                    score14 = "";
                                    score15 = "";
                                    score21 = "";
                                    score22 = "";
                                    score23 = "";
                                    score24 = "";
                                    score25 = "";

                                    //最初に戻る
                                    selectPos = "11";
                                    SetColor(selectPos);
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),

        //ルール
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              color: const Color(0xFFffEECC),
              child: Column(children: [
                Row(children: [
                  Container(
                    height: 30,
                    alignment: Alignment.topLeft,
                    child: Text(rulet, style: const TextStyle(fontSize: 24)),
                  ),
                ]),
                Row(children: [
                  Container(
                    height: 20,
                    alignment: Alignment.centerLeft,
                    child: Text("  ※赤字部分はタップでカスタマイズ可能です。", style: TextStyle(fontSize: ruleFontSize, color: Colors.grey[600])),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize1,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: rule1record,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("フット側に", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: rule1record,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const SelectRule1(),
                    ),
                  ),
                  SizedBox(
                    height: rule1record,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("置いてブレイク", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize1,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize2,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text(rule2, style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize1,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
//                    width: MediaQuery.of(context).size.width * ruleSize2 / 2,
//                    height: 30,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("ブレイク後、", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
//                    width: MediaQuery.of(context).size.width * ruleSize2 / 2,
//                    height: 45,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: const SelectRule3(),
                    ),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize1,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize2,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: const SelectRule4(),
                    ),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize1,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * ruleSize2,
                    child: Container(
                      height: rule1record,
                      alignment: Alignment.centerLeft,
                      child: Text(rule5, style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                    ),
                  ),
                ]),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}

//スコア表(横)
class ScoreHyoYoko extends StatefulWidget {
  const ScoreHyoYoko({Key? key}) : super(key: key);
  @override
  _MyScoreHyoYoko createState() => _MyScoreHyoYoko();
}

class _MyScoreHyoYoko extends State<ScoreHyoYoko> {
  Color selectColor = Colors.white;
  String bufPos = "";

  @override
  Widget build(BuildContext context) {
    log("画面横-build-start");
    double tate = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    double masSize = tate / 8;
    double hyoSize = 10 + 20 + (masSize * 2);
    double koukokuSize = 60;

    double playerYokoSize = 0.2;
    double masYokoSize = 0.06;

    double ruleSize1 = 0.03;
    double ruleSize2 = 0.47;
    double rule1record = 25;

    double clearResetBtnSize = 50;

    //    double btnSize = (tate - hyoSize - koukokuSize) / btnDan;
    double btnSize = (tate - hyoSize - koukokuSize - clearResetBtnSize - (10 * 3) - 10);
    if (btnSize > 80) {
      btnSize = 60;
    }
    const double maruBatuSize = 30;

    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey[800],
      ),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        Column(children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 30) * 0.5,

            //タイトル
            child: Row(children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * playerYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text(""),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("1"),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("2"),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("3"),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("4"),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("5"),
                ),
              ),
            ]),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 30) * 0.5,
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 30) * playerYokoSize,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        final controller = TextEditingController();
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text("プレイヤー１の名前を入力してください"),
//                            content: Text("This is the content"),
                              content: TextField(
                                controller: controller,
                              ),
                              actions: [
                                TextButton(
                                  child: const Text("キャンセル"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    setState(() {
                                      player1 = controller.text;
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: masSize,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                      ),
                      child: Text(player1),
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 30) * (0.5 - playerYokoSize),
                  child: Column(children: [
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "11";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color11,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score11),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "12";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color12,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score12),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "13";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color13,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score13),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "14";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color14,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score14),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "15";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color15,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score15),
                          ),
                        ),
                      ),
                    ]),
                  ]),
                ),
              ]),
              Row(children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 30) * playerYokoSize,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        final controller = TextEditingController();
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text("プレイヤー２の名前を入力してください"),
//                            content: Text("This is the content"),
                              content: TextField(
                                controller: controller,
                              ),
                              actions: [
                                TextButton(
                                  child: const Text("キャンセル"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    setState(() {
                                      player2 = controller.text;
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: masSize,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                      ),
                      child: Text(player2),
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 30) * (0.5 - playerYokoSize),
                  child: Column(children: [
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "21";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color21,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score21),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "22";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color22,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score22),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "23";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color23,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score23),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "24";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color24,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score24),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPos = "25";
                            SetColor(selectPos);
                          });
                        },
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width - 30) * masYokoSize,
                          child: Container(
                            decoration: BoxDecoration(
                              border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                              color: color25,
                            ),
                            alignment: Alignment.center,
                            height: masSize,
                            child: Text(score25),
                          ),
                        ),
                      ),
                    ]),
                  ]),
                ),
              ]),
            ]),
          ),

          //ボタン
          Center(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width - 30) * 0.5,
              height: btnSize,
              child: Row(children: [
                //スコアボタン01
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(width: ((MediaQuery.of(context).size.width - 30) * 0.5 / 2) - 10),
                    child: ElevatedButton(
                      child: const Text('○', style: TextStyle(fontSize: maruBatuSize)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          SetScore(selectPos, maru);
                          selectPos = NextSelect(selectPos).selectPos.toString();
                          SetColor(selectPos);
                        });
                      },
                    ),
                  ),
                ),

                //スコアボタン02
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(width: ((MediaQuery.of(context).size.width - 30) * 0.5 / 2) - 10),
                    child: ElevatedButton(
                      child: const Text('✕', style: TextStyle(fontSize: maruBatuSize)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          SetScore(selectPos, batsu);
                          selectPos = NextSelect(selectPos).selectPos.toString();
                          SetColor(selectPos);
                        });
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),

          Center(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width - 30) * 0.5,
              child: Row(children: [
                //クリア
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(
                      width: ((MediaQuery.of(context).size.width - 30) * 0.5 / 2) - 10,
                      height: clearResetBtnSize,
                    ),
                    child: ElevatedButton(
                      child: const Text('クリア', style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          ScoreClear(selectPos);
                        });
                      },
                    ),
                  ),
                ),
                //リセット
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(width: ((MediaQuery.of(context).size.width - 30) * 0.5 / 2) - 10, height: clearResetBtnSize),
                    child: ElevatedButton(
                      child: const Text('リセット', style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text("リセットしますがよろしいですか？"),
//                            content: Text("This is the content"),
                              actions: [
                                TextButton(
                                  child: const Text("キャンセル"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    setState(() {
                                      score11 = "";
                                      score12 = "";
                                      score13 = "";
                                      score14 = "";
                                      score15 = "";
                                      score21 = "";
                                      score22 = "";
                                      score23 = "";
                                      score24 = "";
                                      score25 = "";

                                      //最初に戻る
                                      selectPos = "11";
                                      SetColor(selectPos);
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
        const SizedBox(
          width: 10,
        ),
        //ルール
        Container(
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: (MediaQuery.of(context).size.width - 30) * 0.5,
            height: tate - 20 - 10 - koukokuSize,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                color: const Color(0xFFffEECC),
                child: Column(children: [
                  Row(children: [
                    Container(
                      height: 30,
                      alignment: Alignment.topLeft,
                      child: Text(rulet, style: const TextStyle(fontSize: 24)),
                    ),
                  ]),
                  Row(children: [
                    Container(
                      height: 20,
                      alignment: Alignment.centerLeft,
                      child: Text("  ※赤字部分はタップでカスタマイズ可能です。", style: TextStyle(fontSize: ruleFontSize, color: Colors.grey[600])),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize1,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: rule1record,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("フット側に", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: rule1record,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const SelectRule1(),
                      ),
                    ),
                    SizedBox(
                      height: rule1record,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("置いてブレイク", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize1,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize2,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text(rule2, style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize1,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
//                    width: MediaQuery.of(context).size.width * ruleSize2 / 2,
//                    height: 30,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("ブレイク後、", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
//                    width: MediaQuery.of(context).size.width * ruleSize2 / 2,
//                    height: 45,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: const SelectRule3(),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize1,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize2,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: const SelectRule4(),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize1,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text("  ・", style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) * ruleSize2,
                      child: Container(
                        height: rule1record,
                        alignment: Alignment.centerLeft,
                        child: Text(rule5, style: TextStyle(fontSize: ruleFontSize, color: Colors.black)),
                      ),
                    ),
                  ]),
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
