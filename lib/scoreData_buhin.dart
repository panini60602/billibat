//プレイヤー選択
import 'dart:developer';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

String totalAvg = "";
String totalMax = "";
String totalGame = "";
String nijuAvg = "";
String nijuMax = "";

selectScore(player) async {
  log("selectScore: debug :selectScore start player=[$player]");
  var sql;

  final database = openDatabase(
    join(await getDatabasesPath(), 'billidb'),
    onCreate: (db, version) {
      db.execute("""CREATE TABLE bowlard(id INTEGER PRIMARY KEY,day TEXT,player TEXT,score INTEGER)""");
      db.execute("""CREATE TABLE player(id INTEGER PRIMARY KEY,player TEXT)""");
    },
    version: 1,
  );

  final Database db = await database;

  //通算アベレージ
  sql = "select avg(score) from bowlard where player = '$player'"; //sql文作成
  final List<Map> bufTotalAvg = await db.rawQuery(sql); //sql実行

  //通算ハイゲーム
  sql = "select max(score) from bowlard where player = '$player'"; //sql文作成
  final List<Map> bufTotalMax = await db.rawQuery(sql); //sql実行

  //通算ゲーム数
  sql = "select count(*) from bowlard where player = '$player'"; //sql文作成
  final List<Map> bufTotalGame = await db.rawQuery(sql); //sql実行

  //20G分のスコア
  sql = "select score from bowlard where player = '$player' order by id desc limit 20"; //sql文作成
  final List<Map> bufnijuScore = await db.rawQuery(sql); //sql実行

  int i;
  int bufTotalScore = 0;
  //20Gの平均
  for (i = 0; bufnijuScore.length > i; i++) {
    bufTotalScore = bufTotalScore + int.parse(bufnijuScore[i]["score"].toString());
  }
  //データなしを考慮
  if (bufTotalScore == 0) {
    nijuAvg = "0";
  } else {
    nijuAvg = (bufTotalScore / bufnijuScore.length).toString();
  }

  //20Gのハイスコア
  int bufHiScore = 0;
  for (i = 0; bufnijuScore.length > i; i++) {
    if (bufHiScore < int.parse(bufnijuScore[i]["score"].toString())) {
      bufHiScore = int.parse(bufnijuScore[i]["score"].toString());
    }
  }
  nijuMax = bufHiScore.toString();

  //通算アベレージ
  if (bufTotalAvg[0]["avg(score)"].toString() == "null") {
    totalAvg = "0";
  } else {
    totalAvg = bufTotalAvg[0]["avg(score)"].toString();
  }

  //通算ハイゲーム
  if (bufTotalMax[0]["max(score)"].toString() == "null") {
    totalMax = "0";
  } else {
    totalMax = bufTotalMax[0]["max(score)"].toString();
  }

  totalGame = bufTotalGame[0]["count(*)"].toString();

//  final list = [totalAvg[0]["avg(score)"], totalMax[0]["max(score)"], totalGame[0]["count(*)"]];
//  log("selectScore: debug :アベレージ=[" + list[0].toString() + "] ハイゲーム=[" + list[1].toString() + "] ゲーム数=[" + list[2].toString() + "]");
//  log("selectScore: debug :アベレージ=[" + totalAvg + "] ハイゲーム=[" + totalMax + "] ゲーム数=[" + totalGame + "]");

  log("selectScore: debug :selectScore end");
//  return list;
}
