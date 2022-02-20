import 'package:flutter/material.dart';

String s1011 = "", s1012 = "", s1021 = "", s1022 = "", s1031 = "", s1032 = "", s1041 = "", s1042 = "", s1051 = "", s1052 = "", s1061 = "", s1062 = "", s1071 = "", s1072 = "", s1081 = "", s1082 = "", s1091 = "", s1092 = "", s1101 = "", s1102 = "", s1103 = "", s2011 = "", s2012 = "", s2021 = "", s2022 = "", s2031 = "", s2032 = "", s2041 = "", s2042 = "", s2051 = "", s2052 = "", s2061 = "", s2062 = "", s2071 = "", s2072 = "", s2081 = "", s2082 = "", s2091 = "", s2092 = "", s2101 = "", s2102 = "", s2103 = "";
String score11 = "", score12 = "", score13 = "", score14 = "", score15 = "";
String score21 = "", score22 = "", score23 = "", score24 = "", score25 = "";

bool btnFlgStrike = false, btnFlgSpare = true;
String selectPos = "11";
String player1 = "プレイヤー１";
String player2 = "プレイヤー２";
String maru = "○";
String batsu = "✕";
double ruleFontSize = 14;

bool muki = true;
String rulet = "■ルール";
String rule1 = "フット側に３球置いてブレイク";
String rule2 = "的球が入った場合はフットスポットに戻す";
String rule3 = "ブレイク後、フリーボールで始める";
String rule4 = "的玉の番号に関係なく、好きな順番で入れていく";
String rule5 = "取り切れたら成功！";

Color color11 = Colors.yellow, color12 = Colors.white, color13 = Colors.white, color14 = Colors.white, color15 = Colors.white;
Color color21 = Colors.white, color22 = Colors.white, color23 = Colors.white, color24 = Colors.white, color25 = Colors.white;

class SetScore {
  String? selectPos;
  String? score;

  SetScore(this.selectPos, this.score) {
    switch (selectPos) {
      case "11":
        score11 = "$score";
        break;
      case "12":
        score12 = "$score";
        break;
      case "13":
        score13 = "$score";
        break;
      case "14":
        score14 = "$score";
        break;
      case "15":
        score15 = "$score";
        break;
      case "21":
        score21 = "$score";
        break;
      case "22":
        score22 = "$score";
        break;
      case "23":
        score23 = "$score";
        break;
      case "24":
        score24 = "$score";
        break;
      case "25":
        score25 = "$score";
        break;
    }
  }
}

class SetColor {
  String? selectPos;

  SetColor(this.selectPos) {
//一旦すべてホワイトに
    color11 = Colors.white;
    color12 = Colors.white;
    color13 = Colors.white;
    color14 = Colors.white;
    color15 = Colors.white;
    color21 = Colors.white;
    color22 = Colors.white;
    color23 = Colors.white;
    color24 = Colors.white;
    color25 = Colors.white;

    switch (selectPos) {
      case "11":
        color11 = Colors.yellow;
        break;
      case "12":
        color12 = Colors.yellow;
        break;
      case "13":
        color13 = Colors.yellow;
        break;
      case "14":
        color14 = Colors.yellow;
        break;
      case "15":
        color15 = Colors.yellow;
        break;
      case "21":
        color21 = Colors.yellow;
        break;
      case "22":
        color22 = Colors.yellow;
        break;
      case "23":
        color23 = Colors.yellow;
        break;
      case "24":
        color24 = Colors.yellow;
        break;
      case "25":
        color25 = Colors.yellow;
        break;
    }
  }
}

class NextSelect {
  String? selectPos;

  NextSelect(this.selectPos) {
    switch (selectPos) {
      case "11":
        selectPos = "21";
        break;
      case "12":
        selectPos = "22";
        break;
      case "13":
        selectPos = "23";
        break;
      case "14":
        selectPos = "24";
        break;
      case "15":
        selectPos = "25";
        break;

      case "21":
        selectPos = "12";
        break;
      case "22":
        selectPos = "13";
        break;
      case "23":
        selectPos = "14";
        break;
      case "24":
        selectPos = "15";
        break;
      case "25":
        selectPos = "";
        break;
    }
  }
}

class ScoreClear {
  String? selectPos;

  ScoreClear(this.selectPos) {
    switch (selectPos) {
      case "11":
        score11 = "";
        break;
      case "12":
        score12 = "";
        break;
      case "13":
        score13 = "";
        break;
      case "14":
        score14 = "";
        break;
      case "15":
        score15 = "";
        break;
      case "21":
        score21 = "";
        break;
      case "22":
        score22 = "";
        break;
      case "23":
        score23 = "";
        break;
      case "24":
        score24 = "";
        break;
      case "25":
        score25 = "";
        break;
    }
  }
}

//ルール１
class SelectRule1 extends StatefulWidget {
  const SelectRule1({Key? key}) : super(key: key);

  @override
  _SelectRule1State createState() => _SelectRule1State();
}

class _SelectRule1State extends State<SelectRule1> {
  final Map<String, List<String>> _dropDownMenu = {
    '２球': ['1'],
    '３球': ['2'],
    '４球': ['2'],
  };

  String _selectedKey = "３球";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedKey,
      style: TextStyle(fontSize: ruleFontSize, color: Colors.red),
      isDense: true,
      onChanged: (newValue) {
        setState(() {
          _selectedKey = newValue!;
        });
      },
      items: _dropDownMenu.keys.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//ルール３
class SelectRule3 extends StatefulWidget {
  const SelectRule3({Key? key}) : super(key: key);

  @override
  _SelectRule3State createState() => _SelectRule3State();
}

class _SelectRule3State extends State<SelectRule3> {
  final Map<String, List<String>> _dropDownMenu = {
    'フリーボールで始める': ['1'],
    'そのままの状態から始める': ['2'],
  };

  String _selectedKey = "フリーボールで始める";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedKey,
      style: TextStyle(fontSize: ruleFontSize, color: Colors.red),
      isDense: true,
      onChanged: (newValue) {
        setState(() {
          _selectedKey = newValue!;
        });
      },
      items: _dropDownMenu.keys.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//ルール４
class SelectRule4 extends StatefulWidget {
  const SelectRule4({Key? key}) : super(key: key);

  @override
  _SelectRule4State createState() => _SelectRule4State();
}

class _SelectRule4State extends State<SelectRule4> {
  final Map<String, List<String>> _dropDownMenu = {
    'どの的玉から狙ってもよい': ['1'],
    '最小番号から順に入れていく': ['2'],
  };

  String _selectedKey = "どの的玉から狙ってもよい";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedKey,
      style: TextStyle(fontSize: ruleFontSize, color: Colors.red),
      isDense: true,
      onChanged: (newValue) {
        setState(() {
          _selectedKey = newValue!;
        });
      },
      items: _dropDownMenu.keys.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
