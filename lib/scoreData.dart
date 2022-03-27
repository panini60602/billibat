import 'dart:developer';

import 'package:flutter/material.dart';

import 'db_common.dart';
import 'header.dart';
import 'nend.dart';
import 'scoreData_buhin.dart';

class scoreData extends StatefulWidget {
  const scoreData({Key? key}) : super(key: key);

  @override
  _MyScoreData createState() => _MyScoreData();
}

class _MyScoreData extends State<scoreData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//    return WillPopScope(
//      onWillPop: () => _backButtonPress(context),
//      child: Scaffold(
        appBar: const HeaderScoreData(),
        body: LayoutBuilder(builder: (context, constraints) {
          return Stack(
            alignment: Alignment.center,
            children: const [
              Positioned(
                child: MainContents(),
              ),
              Positioned(
                bottom: 0.0,
                child: KoukokuNend(),
              ),
            ],
            fit: StackFit.expand,
          );
        }));
  }
}

//プレイヤー選択
class MainContents extends StatefulWidget {
  const MainContents({Key? key}) : super(key: key);
  @override
  _MyMainContents createState() => _MyMainContents();
}

class _MyMainContents extends State<MainContents> {
  String _selectedKey = '';

  @override
  Widget build(BuildContext context) {
    log("debug : MainContents-start");

    double lineheight = 30;
    double koumoku1 = 0.2;
    double koumoku2 = 0.3;
    double koumoku3 = 50;
//    String selectPlayer = "ぱにーに";
    final Map<String, List<String>> _dropDownMenu = {
      'ぱにーに': ["ぱにーに"],
      'おざ': ['おざ'],
      '': [''],
    };

    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey[800],
      ),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),

        //プレイヤー名
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.98,
            height: 60,
            child: Container(
              alignment: Alignment.center,
              child: DropdownButton<String>(
                value: _selectedKey,
                style: const TextStyle(fontSize: 30, color: Colors.black),
                onChanged: (newValue) async {
                  //データを変更する
                  _selectedKey = newValue!;
                  log("PlayerSelect: debug :選択プレイヤー = [$newValue]");
                  await selectScore(newValue);
                  log("SelectScore: debug :アベレージ=[" + totalAvg + "] ハイゲーム=[" + totalMax + "] ゲーム数=[" + totalGame + "]");

                  setState(() {});
                },
                items: _dropDownMenu.keys.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        //２０G
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          child: Container(
            decoration: const BoxDecoration(
//                color: Color(0xFFffccaa),
              border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
            ),
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90 - 2,
                  height: lineheight + 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFffff22),
                      border: Border(bottom: BorderSide(width: 1)),
                    ),
                    child: const Text("■ 20Gデータ ■", style: TextStyle(fontSize: 22)),
                  ),
                ),
              ]),
              //アベレージ
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku1,
                    height: lineheight,
                    child: Container(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku2,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text("アベレージ"),
                    ),
                  ),
                  SizedBox(
                    width: koumoku3,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
//                        border: Border(bottom: BorderSide(width: 1)),
                          ),
                      child: Text(nijuAvg, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]),
              ),
              //ハイゲーム
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku1,
                    height: lineheight,
                    child: Container(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * koumoku2,
                      height: lineheight,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("ハイゲーム"),
                      )),
                  SizedBox(
                    width: koumoku3,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
//                        border: Border(bottom: BorderSide(width: 1)),
                          ),
                      child: Text(nijuMax, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        //通算
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          child: Container(
            decoration: const BoxDecoration(
//                color: Color(0xFFffccaa),
              border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1), top: BorderSide(width: 1), bottom: BorderSide(width: 1)),
            ),
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90 - 2,
                  height: lineheight + 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFffccaa),
                      border: Border(bottom: BorderSide(width: 1)),
                    ),
                    child: const Text("■ 通算データ ■", style: TextStyle(fontSize: 22)),
                  ),
                ),
              ]),
              //アベレージ
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku1,
                    height: lineheight,
                    child: Container(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku2,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text("アベレージ"),
                    ),
                  ),
                  SizedBox(
                    width: koumoku3,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
//                        border: Border(bottom: BorderSide(width: 1)),
                          ),
                      child: Text(totalAvg, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]),
              ),
              //ハイゲーム
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku1,
                    height: lineheight,
                    child: Container(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * koumoku2,
                      height: lineheight,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("ハイゲーム"),
                      )),
                  SizedBox(
                    width: koumoku3,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
//                        border: Border(bottom: BorderSide(width: 1)),
                          ),
                      child: Text(totalMax, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]),
              ),
              //ゲーム数
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * koumoku1,
                    height: lineheight,
                    child: Container(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * koumoku2,
                      height: lineheight,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("通算ゲーム数"),
                      )),
                  SizedBox(
                    width: koumoku3,
                    height: lineheight,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
//                        border: Border(bottom: BorderSide(width: 1)),
                          ),
                      child: Text(totalGame, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        //ボタン
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9 - 200,
              height: lineheight,
              child: Container(),
            ),

            //全スコアリセット
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(width: 200, height: 50),
                child: ElevatedButton(
                  child: const Text('全スコアリセット', style: TextStyle(fontSize: 18)),
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
                          title: const Text("全スコアをリセットしますがよろしいですか？"),
                          actions: [
                            TextButton(
                              child: const Text("キャンセル"),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                setState(() {
                                  //スコアリセット
                                  resetScore();
                                  Navigator.pop(context);

                                  //リセット後、メッセージ表示
                                  showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (_) {
                                      return AlertDialog(
                                        title: const Text("全スコアをリセットしました"),
                                        actions: [
                                          TextButton(
                                            child: const Text("OK"),
                                            onPressed: () {
                                              setState(() {
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
      ]),
    );
  }
}
