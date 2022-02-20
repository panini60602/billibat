import 'package:billibat/bowlard_buhin.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'koukoku.dart';

class Bowlard extends StatefulWidget {
  const Bowlard({Key? key}) : super(key: key);

  @override
  _MyBowlard createState() => _MyBowlard();
}

//class Bowlard extends StatelessWidget {
class _MyBowlard extends State<Bowlard> {
//  const Bowlard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backButtonPress(context),
      child: Scaffold(
          appBar: const HeaderBowlard(),
          body: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < constraints.maxHeight) {
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
                  SetScore("1011", "");
                  SetScore("1012", "");
                  SetScore("1021", "");
                  SetScore("1022", "");
                  SetScore("1031", "");
                  SetScore("1032", "");
                  SetScore("1041", "");
                  SetScore("1042", "");
                  SetScore("1051", "");
                  SetScore("1052", "");
                  SetScore("1061", "");
                  SetScore("1062", "");
                  SetScore("1071", "");
                  SetScore("1072", "");
                  SetScore("1081", "");
                  SetScore("1082", "");
                  SetScore("1091", "");
                  SetScore("1092", "");
                  SetScore("1101", "");
                  SetScore("1102", "");
                  SetScore("1103", "");
                  SetScore("2011", "");
                  SetScore("2012", "");
                  SetScore("2021", "");
                  SetScore("2022", "");
                  SetScore("2031", "");
                  SetScore("2032", "");
                  SetScore("2041", "");
                  SetScore("2042", "");
                  SetScore("2051", "");
                  SetScore("2052", "");
                  SetScore("2061", "");
                  SetScore("2062", "");
                  SetScore("2071", "");
                  SetScore("2072", "");
                  SetScore("2081", "");
                  SetScore("2082", "");
                  SetScore("2091", "");
                  SetScore("2092", "");
                  SetScore("2101", "");
                  SetScore("2102", "");
                  SetScore("2103", "");

                  score101 = "";
                  score102 = "";
                  score103 = "";
                  score104 = "";
                  score105 = "";
                  score106 = "";
                  score107 = "";
                  score108 = "";
                  score109 = "";
                  score110 = "";
                  score201 = "";
                  score202 = "";
                  score203 = "";
                  score204 = "";
                  score205 = "";
                  score206 = "";
                  score207 = "";
                  score208 = "";
                  score209 = "";
                  score210 = "";

                  //最初に戻る
                  selectPos = "1011";
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
  int nextFlg = 0;
  Color selectColor = Colors.white;
  String bufPos = "";

  @override
  Widget build(BuildContext context) {
    double tate = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    double masSize = tate / 28;
    double hyoSize = 40 + (masSize * 8) + 90;
    double koukokuSize = 50;
    double btnDan = 5;
    double btnSize = (tate - hyoSize - koukokuSize) / btnDan;

    double playerYokoSize = 0.38;
    double masYokoSize = 0.06;

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
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("1"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("2"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("3"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("4"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
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
                    height: masSize * 2,
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
                          bufPos = "1011";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1011,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1011),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1012";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1012,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1012),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1021";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1021,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1021),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1022";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1022,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1022),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1031";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1031,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1031),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1032";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1032,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1032),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1041";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1041,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1041),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1042";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1042,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1042),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1051";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1051,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1051),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1052";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1052,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1052),
                        ),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score101),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score102),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score103),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score104),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score105),
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
                    height: masSize * 2,
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
                          bufPos = "2011";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2011,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2011),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2012";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2012,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2012),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2021";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2021,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2021),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2022";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2022,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2022),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2031";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2031,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2031),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2032";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2032,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2032),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2041";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2041,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2041),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2042";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2042,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2042),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2051";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2051,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2051),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2052";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2052,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2052),
                        ),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score201),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score202),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score203),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score204),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score205),
                      ),
                    ),
                  ]),
                ]),
              ),
            ]),
          ]),
        ),

        //６～１０フレ
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.98,
          child: Column(children: [
            //タイトル
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("6"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("7"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("8"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("9"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.09 * 2 + 0.08),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFffAA88),
                    border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                  ),
                  child: const Text("10"),
                ),
              ),
            ]),

            //プレイヤー１
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1061";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                      color: color1061,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1061),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1062";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1062,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1062),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1071";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1071,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1071),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1072";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1072,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1072),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1081";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1081,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1081),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1082";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1082,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1082),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1091";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1091,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1091),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1092";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1092,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1092),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1101";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1101,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1101),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1102";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1102,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1102),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "1103";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color1103,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s1103),
                  ),
                ),
              ),
            ]),

            //プレイヤー1トータル
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score106),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score107),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score108),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score109),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.09 * 2 + 0.08),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score110),
                ),
              ),
            ]),

            //プレイヤー2
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2061";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                      color: color2061,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2061),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2062";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2062,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2062),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2071";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2071,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2071),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2072";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2072,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2072),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2081";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2081,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2081),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2082";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2082,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2082),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2091";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2091,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2091),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2092";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2092,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2092),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2101";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2101,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2101),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2102";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2102,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2102),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bufPos = "2103";
                      bufPos = judgeGetPos(bufPos);
                      if (bufPos != "") {
                        SetColor(bufPos);
                        selectPos = bufPos;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                      color: color2103,
                    ),
                    alignment: Alignment.center,
                    height: masSize,
                    child: Text(s2103),
                  ),
                ),
              ),
            ]),

            //プレイヤー2トータル
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1), left: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score206),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score207),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score208),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.09 * 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score209),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.09 * 2 + 0.08),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: masSize,
                  child: Text(score210),
                ),
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
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('1', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "1");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('2', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "2");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン03
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('3', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "3");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //スコアボタン04
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('4', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "4");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン05
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('5', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "5");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン06
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('6', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "6");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //スコアボタン07
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('7', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "7");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン08
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('8', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "8");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン09
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('9', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "9");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //スコアボタン00
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('0', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "0");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタンスペア
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('ｽﾍﾟｱ', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: btnFlgSpare
                        ? null
                        : () {
                            setState(() {
                              SetScore(selectPos, spare);
                              SetTotalScore();
                              nextFlg = 0;
                              selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                              SetColor(selectPos);
                            });
                          },
                  ),
                ),
              ),

              //スコアボタンストライク
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / 3) - 10),
                  child: ElevatedButton(
                    child: const Text('ｽﾄﾗｲｸ', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: btnFlgStrike
                        ? null
                        : () {
                            setState(() {
                              SetScore(selectPos, strike);
                              SetTotalScore();
                              //10フレで1投目・2投目の場合、次投にする
                              if (selectPos == "1101" || selectPos == "1102" || selectPos == "2101" || selectPos == "2102") {
                                nextFlg = 0;
                              } else {
                                nextFlg = 1;
                              }
                              selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //リセット
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95) - 10),
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
                                    SetScore("1011", "");
                                    SetScore("1012", "");
                                    SetScore("1021", "");
                                    SetScore("1022", "");
                                    SetScore("1031", "");
                                    SetScore("1032", "");
                                    SetScore("1041", "");
                                    SetScore("1042", "");
                                    SetScore("1051", "");
                                    SetScore("1052", "");
                                    SetScore("1061", "");
                                    SetScore("1062", "");
                                    SetScore("1071", "");
                                    SetScore("1072", "");
                                    SetScore("1081", "");
                                    SetScore("1082", "");
                                    SetScore("1091", "");
                                    SetScore("1092", "");
                                    SetScore("1101", "");
                                    SetScore("1102", "");
                                    SetScore("1103", "");
                                    SetScore("2011", "");
                                    SetScore("2012", "");
                                    SetScore("2021", "");
                                    SetScore("2022", "");
                                    SetScore("2031", "");
                                    SetScore("2032", "");
                                    SetScore("2041", "");
                                    SetScore("2042", "");
                                    SetScore("2051", "");
                                    SetScore("2052", "");
                                    SetScore("2061", "");
                                    SetScore("2062", "");
                                    SetScore("2071", "");
                                    SetScore("2072", "");
                                    SetScore("2081", "");
                                    SetScore("2082", "");
                                    SetScore("2091", "");
                                    SetScore("2092", "");
                                    SetScore("2101", "");
                                    SetScore("2102", "");
                                    SetScore("2103", "");

                                    score101 = "";
                                    score102 = "";
                                    score103 = "";
                                    score104 = "";
                                    score105 = "";
                                    score106 = "";
                                    score107 = "";
                                    score108 = "";
                                    score109 = "";
                                    score110 = "";
                                    score201 = "";
                                    score202 = "";
                                    score203 = "";
                                    score204 = "";
                                    score205 = "";
                                    score206 = "";
                                    score207 = "";
                                    score208 = "";
                                    score209 = "";
                                    score210 = "";

                                    //最初に戻る
                                    selectPos = "1011";
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
  int nextFlg = 0;
  Color selectColor = Colors.white;
  String bufPos = "";

  @override
  Widget build(BuildContext context) {
    double tate = MediaQuery.of(context).size.height;
    double masSize = tate / 20;
    double hyoSize = 40 + (masSize * 5) + 35;
    double koukokuSize = 80;
    double btnDan = 3;
    double btnSize = (tate - hyoSize - koukokuSize) / btnDan;

    double playerYokoSize = 0.14;
    double masYokoSize = 0.04;
    double btnRetsu = 5;
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
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("1"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("2"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("3"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("4"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("5"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("6"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("7"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("8"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * masYokoSize * 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("9"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (masYokoSize * 3),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffAA88),
                  border: Border(right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
                ),
                child: const Text("10"),
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
                    height: masSize * 2,
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
                          bufPos = "1011";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1011,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1011),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1012";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1012,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1012),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1021";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1021,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1021),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1022";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1022,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1022),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1031";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1031,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1031),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1032";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1032,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1032),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1041";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1041,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1041),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1042";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1042,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1042),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1051";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1051,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1051),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "1052";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1052,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1052),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1061";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1061,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1061),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1062";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1062,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1062),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1071";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1071,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1071),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1072";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1072,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1072),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1081";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1081,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1081),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1082";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1082,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1082),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1091";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1091,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1091),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1092";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1092,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1092),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1101";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1101,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1101),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1102";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1102,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1102),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "1103";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color1103,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s1103),
                        ),
                      ),
                    ),
                  ]),

                  //プレイヤー１トータル
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score101),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score102),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score103),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score104),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score105),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score106),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score107),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score108),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score109),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * (masYokoSize * 3),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score110),
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
                    height: masSize * 2,
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
                          bufPos = "2011";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2011,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2011),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2012";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2012,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2012),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2021";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2021,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2021),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2022";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2022,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2022),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2031";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2031,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2031),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2032";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2032,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2032),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2041";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2041,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2041),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2042";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2042,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2042),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2051";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2051,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2051),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          bufPos = "2052";
                          bufPos = judgeGetPos(bufPos);
                          if (bufPos != "") {
                            SetColor(bufPos);
                            selectPos = bufPos;
                          }
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * masYokoSize,
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2052,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2052),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2061";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2061,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2061),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2062";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2062,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2062),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2071";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2071,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2071),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2072";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2072,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2072),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2081";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2081,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2081),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2082";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2082,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2082),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2091";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2091,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2091),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2092";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2092,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2092),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2101";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2101,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2101),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2102";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2102,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2102),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bufPos = "2103";
                            bufPos = judgeGetPos(bufPos);
                            if (bufPos != "") {
                              SetColor(bufPos);
                              selectPos = bufPos;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                            color: color2103,
                          ),
                          alignment: Alignment.center,
                          height: masSize,
                          child: Text(s2103),
                        ),
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score201),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score202),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score203),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score204),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score205),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score206),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score207),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score208),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score209),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * masYokoSize * 3,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1), right: BorderSide(width: 1)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        height: masSize,
                        child: Text(score210),
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
              //スコアボタン00
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('0', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "0");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),
              //スコアボタン01
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('1', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "1");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('2', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "2");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン03
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('3', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "3");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン04
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('4', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "4");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //スコアボタン05
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('5', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "5");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン06
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('6', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "6");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),
              //スコアボタン07
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('7', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "7");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン08
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('8', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "8");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                        SetColor(selectPos);
                      });
                    },
                  ),
                ),
              ),

              //スコアボタン09
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
                  child: ElevatedButton(
                    child: const Text('9', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        SetScore(selectPos, "9");
                        SetTotalScore();
                        //10フレ1投目がストライク以外で今回が2投目の場合、次投ではなく、次フレームにする。今回のスコアが10を超えてスペアの場合も次投にする。
                        if ((selectPos == "1102" && s1102 == spare) || (selectPos == "2102" && s2102 == spare)) {
                          nextFlg = 0;
                        } else {
                          if ((s1101 != strike && selectPos == "1102") || (s2101 != strike && selectPos == "2102")) {
                            nextFlg = 1;
                          } else {
                            nextFlg = 0;
                          }
                        }
                        selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
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
            height: btnSize,
            child: Row(children: [
              //スコアボタンスペア
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu * 2) - 10),
                  child: ElevatedButton(
                    child: const Text('ｽﾍﾟｱ', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: btnFlgSpare
                        ? null
                        : () {
                            setState(() {
                              SetScore(selectPos, spare);
                              SetTotalScore();
                              nextFlg = 0;
                              selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                              SetColor(selectPos);
                            });
                          },
                  ),
                ),
              ),

              //スコアボタンストライク
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu * 2) - 10),
                  child: ElevatedButton(
                    child: const Text('ｽﾄﾗｲｸ', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: btnFlgStrike
                        ? null
                        : () {
                            setState(() {
                              SetScore(selectPos, strike);
                              SetTotalScore();
                              //10フレで1投目・2投目の場合、次投にする
                              if (selectPos == "1101" || selectPos == "1102" || selectPos == "2101" || selectPos == "2102") {
                                nextFlg = 0;
                              } else {
                                nextFlg = 1;
                              }
                              selectPos = NextSelect(selectPos, nextFlg).selectPos.toString();
                              SetColor(selectPos);
                            });
                          },
                  ),
                ),
              ),
              //リセット
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width * 0.95 / btnRetsu) - 10),
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
                                    SetScore("1011", "");
                                    SetScore("1012", "");
                                    SetScore("1021", "");
                                    SetScore("1022", "");
                                    SetScore("1031", "");
                                    SetScore("1032", "");
                                    SetScore("1041", "");
                                    SetScore("1042", "");
                                    SetScore("1051", "");
                                    SetScore("1052", "");
                                    SetScore("1061", "");
                                    SetScore("1062", "");
                                    SetScore("1071", "");
                                    SetScore("1072", "");
                                    SetScore("1081", "");
                                    SetScore("1082", "");
                                    SetScore("1091", "");
                                    SetScore("1092", "");
                                    SetScore("1101", "");
                                    SetScore("1102", "");
                                    SetScore("1103", "");
                                    SetScore("2011", "");
                                    SetScore("2012", "");
                                    SetScore("2021", "");
                                    SetScore("2022", "");
                                    SetScore("2031", "");
                                    SetScore("2032", "");
                                    SetScore("2041", "");
                                    SetScore("2042", "");
                                    SetScore("2051", "");
                                    SetScore("2052", "");
                                    SetScore("2061", "");
                                    SetScore("2062", "");
                                    SetScore("2071", "");
                                    SetScore("2072", "");
                                    SetScore("2081", "");
                                    SetScore("2082", "");
                                    SetScore("2091", "");
                                    SetScore("2092", "");
                                    SetScore("2101", "");
                                    SetScore("2102", "");
                                    SetScore("2103", "");

                                    score101 = "";
                                    score102 = "";
                                    score103 = "";
                                    score104 = "";
                                    score105 = "";
                                    score106 = "";
                                    score107 = "";
                                    score108 = "";
                                    score109 = "";
                                    score110 = "";
                                    score201 = "";
                                    score202 = "";
                                    score203 = "";
                                    score204 = "";
                                    score205 = "";
                                    score206 = "";
                                    score207 = "";
                                    score208 = "";
                                    score209 = "";
                                    score210 = "";

                                    //最初に戻る
                                    selectPos = "1011";
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
    );
  }
}
