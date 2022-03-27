import 'dart:async';
import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'database_helper.dart';

var db;
final dbHelper = DatabaseHelper.instance;

/*
class dastaBase {
  void _insert() async {
// row to insert
    Map<String, dynamic> row = {DatabaseHelper.columnName: 'Bob', DatabaseHelper.columnAge: 23};
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }
}
*/

/*
Future opneDB() async {
  log("OpenDB: debug :openDB start");

  //  String ret = "OK";
  final database = openDatabase(
    join(await getDatabasesPath(), 'billidb'),
    onCreate: (db, version) {
      db.execute("""CREATE TABLE bowlard(id INTEGER PRIMARY KEY,day TEXT,player TEXT,score INTEGER)""");
      db.execute("""CREATE TABLE player(id INTEGER PRIMARY KEY,player TEXT)""");
    },
    version: 1,
  );

  log("OpenDB: debug :openDB end");
//  return ret;
}
*/

/*
Future<String> closeDB() async {
  log("OpenDB: debug :closeDB start");
  String ret = "OK";
  await db.close();

  log("OpenDB: debug :closeDB end");
  return ret;
}
*/

Future insertScore(player, score) async {
  log("InsertScore: debug :InsertScore start");

  final database = openDatabase(
    join(await getDatabasesPath(), 'billidb'),
    onCreate: (db, version) {
      db.execute("""CREATE TABLE bowlard(id INTEGER PRIMARY KEY,day TEXT,player TEXT,score INTEGER)""");
      db.execute("""CREATE TABLE player(id INTEGER PRIMARY KEY,player TEXT)""");
    },
    version: 1,
  );

  var sql;
  var id;
  final Database db = await database;

  //**** idの最大値をゲットして＋１ ****//
  //データが0件の場合はidに0を入れる
  sql = "select Max(id) from bowlard"; //sql文作成
  final List<Map> list = await db.rawQuery(sql); //sql実行
  if (list[0]["Max(id)"] == null) {
    id = 0;
  } else {
    id = list[0]["Max(id)"] + 1; //idの最大値を取得して+1
  }
  log("InsertScore: debug :id = [$id]");

  //日付を取得
  DateTime now = DateTime.now();
  DateFormat outputFormat = DateFormat('yyyy/MM/dd');
  String day = outputFormat.format(now);
  log("InsertScore: debug :今日 = [$day]");

  //登録
  sql = "INSERT INTO bowlard VALUES ($id,'$day','$player',$score)";
  log("InsertScore: debug :実行sql = [$sql]");
  db.rawInsert(sql);

  log("InsertScore: debug :InsertScore end");
}

//DB丸ごと削除
Future resetScore() async {
  log("resetScore: debug :resetScore start");
  await deleteDatabase('billidb'); // データベースの削除
  log("resetScore: debug :resetScore end");
}

Future UpdateTable() async {
  log("UpdateTable: debug :UpdateTable start");
  var dog;
  await db.update('dogs', dog.toMap(), where: 'id = ?', whereArgs: [dog.id]);
// await db.rawUpdate('UPDATE dogs SET age = ${dog.age} WHERE id = ${dog.id}');
  log("UpdateTable: debug :UpdateTable end");
}

Future DeleteTable() async {
  log("DeleteTable: debug :DeleteTable start");
  var id;

  await db.delete('dogs', where: 'id = ?', whereArgs: [id]);
// await database.rawDelete('DELETE FROM dogs WHERE id = ?', [id]);
  log("DeleteTable: debug :DeleteTable end");
}
