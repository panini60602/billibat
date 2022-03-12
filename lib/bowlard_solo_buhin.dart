import 'dart:developer';

import 'package:flutter/material.dart';

import 'common_buhin.dart';

String s1011 = "", s1012 = "", s1021 = "", s1022 = "", s1031 = "", s1032 = "", s1041 = "", s1042 = "", s1051 = "", s1052 = "";
String s1061 = "", s1062 = "", s1071 = "", s1072 = "", s1081 = "", s1082 = "", s1091 = "", s1092 = "", s1101 = "", s1102 = "", s1103 = "";
String score101 = "", score102 = "", score103 = "", score104 = "", score105 = "", score106 = "", score107 = "", score108 = "", score109 = "", score110 = "";

bool btnFlgStrike = false, btnFlgSpare = true;
String selectPos = "1011";
String player1 = "プレイヤー１";

String spare = "/";
String strike = "X";
bool muki = true;

Color color1011 = Colors.yellow, color1012 = Colors.white, color1021 = Colors.white, color1022 = Colors.white, color1031 = Colors.white, color1032 = Colors.white, color1041 = Colors.white, color1042 = Colors.white, color1051 = Colors.white, color1052 = Colors.white, color1061 = Colors.white, color1062 = Colors.white, color1071 = Colors.white, color1072 = Colors.white, color1081 = Colors.white, color1082 = Colors.white, color1091 = Colors.white, color1092 = Colors.white, color1101 = Colors.white, color1102 = Colors.white, color1103 = Colors.white;

class SetScore {
  String? selectPos;
  String? score;

  SetScore(this.selectPos, this.score) {
    switch (selectPos) {
      case "1011":
        s1011 = "$score";
        s1012 = "";
        score101 = "";
        break;
      case "1012":
        if ((intChange(s1011) + intChange("$score")) >= 10) {
          s1012 = spare;
          score101 = "";
        } else {
          s1012 = "$score";
        }
        break;
      case "1021":
        s1021 = "$score";
        s1022 = "";
        score102 = "";
        break;
      case "1022":
        if ((intChange(s1021) + intChange("$score")) >= 10) {
          s1022 = spare;
          score102 = "";
        } else {
          s1022 = "$score";
        }
        break;
      case "1031":
        s1031 = "$score";
        s1032 = "";
        score103 = "";
        break;
      case "1032":
        if ((intChange(s1031) + intChange("$score")) >= 10) {
          s1032 = spare;
          score103 = "";
        } else {
          s1032 = "$score";
        }
        break;
      case "1041":
        s1041 = "$score";
        s1042 = "";
        score104 = "";
        break;
      case "1042":
        if ((intChange(s1041) + intChange("$score")) >= 10) {
          s1042 = spare;
          score104 = "";
        } else {
          s1042 = "$score";
        }
        break;
      case "1051":
        s1051 = "$score";
        s1052 = "";
        score105 = "";
        break;
      case "1052":
        if ((intChange(s1051) + intChange("$score")) >= 10) {
          s1052 = spare;
          score105 = "";
        } else {
          s1052 = "$score";
        }
        break;
      case "1061":
        s1061 = "$score";
        s1062 = "";
        score106 = "";
        break;
      case "1062":
        if ((intChange(s1061) + intChange("$score")) >= 10) {
          s1062 = spare;
          score106 = "";
        } else {
          s1062 = "$score";
        }
        break;
      case "1071":
        s1071 = "$score";
        s1072 = "";
        score107 = "";
        break;
      case "1072":
        if ((intChange(s1071) + intChange("$score")) >= 10) {
          s1072 = spare;
          score107 = "";
        } else {
          s1072 = "$score";
        }
        break;
      case "1081":
        s1081 = "$score";
        s1082 = "";
        score108 = "";
        break;
      case "1082":
        if ((intChange(s1081) + intChange("$score")) >= 10) {
          s1082 = spare;
          score108 = "";
        } else {
          s1082 = "$score";
        }
        break;
      case "1091":
        s1091 = "$score";
        s1092 = "";
        score109 = "";
        break;
      case "1092":
        if ((intChange(s1091) + intChange("$score")) >= 10) {
          s1092 = spare;
          score109 = "";
        } else {
          s1092 = "$score";
        }
        break;
      case "1101":
        s1101 = "$score";
        s1102 = "";
        s1103 = "";
        score110 = "";
        break;
      case "1102":
        if (s1101 == strike || score == spare) {
          s1102 = "$score";
          s1103 = "";
          score110 = "";
        } else {
          if ((intChange(s1101) + intChange("$score")) >= 10) {
            s1102 = spare;
            s1103 = "";
            score110 = "";
          } else {
            s1102 = "$score";
            s1103 = "";
            score110 = "";
          }
        }
        break;
      case "1103":
        if (s1102 == strike || s1102 == spare) {
          s1103 = "$score";
        } else {
          if ((intChange(s1102) + intChange("$score")) >= 10) {
            s1103 = spare;
          } else {
            s1103 = "$score";
          }
        }
        break;
    }
  }
}

class SetColor {
  String? selectPos;

  SetColor(this.selectPos) {
//一旦すべてホワイトに
    color1011 = Colors.white;
    color1012 = Colors.white;
    color1021 = Colors.white;
    color1022 = Colors.white;
    color1031 = Colors.white;
    color1032 = Colors.white;
    color1041 = Colors.white;
    color1042 = Colors.white;
    color1051 = Colors.white;
    color1052 = Colors.white;
    color1061 = Colors.white;
    color1062 = Colors.white;
    color1071 = Colors.white;
    color1072 = Colors.white;
    color1081 = Colors.white;
    color1082 = Colors.white;
    color1091 = Colors.white;
    color1092 = Colors.white;
    color1101 = Colors.white;
    color1102 = Colors.white;
    color1103 = Colors.white;

    switch (selectPos) {
      case "1011":
        color1011 = Colors.yellow;
        break;
      case "1012":
        color1012 = Colors.yellow;
        break;
      case "1021":
        color1021 = Colors.yellow;
        break;
      case "1022":
        color1022 = Colors.yellow;
        break;
      case "1031":
        color1031 = Colors.yellow;
        break;
      case "1032":
        color1032 = Colors.yellow;
        break;
      case "1041":
        color1041 = Colors.yellow;
        break;
      case "1042":
        color1042 = Colors.yellow;
        break;
      case "1051":
        color1051 = Colors.yellow;
        break;
      case "1052":
        color1052 = Colors.yellow;
        break;
      case "1061":
        color1061 = Colors.yellow;
        break;
      case "1062":
        color1062 = Colors.yellow;
        break;
      case "1071":
        color1071 = Colors.yellow;
        break;
      case "1072":
        color1072 = Colors.yellow;
        break;
      case "1081":
        color1081 = Colors.yellow;
        break;
      case "1082":
        color1082 = Colors.yellow;
        break;
      case "1091":
        color1091 = Colors.yellow;
        break;
      case "1092":
        color1092 = Colors.yellow;
        break;
      case "1101":
        color1101 = Colors.yellow;
        break;
      case "1102":
        color1102 = Colors.yellow;
        break;
      case "1103":
        color1103 = Colors.yellow;
        break;
    }
    //次のセレクト時の位置によりボタン活性・非活性の決定
    SetButton(selectPos);
  }
}

class NextSelect {
  String? selectPos;
  int? flg; //0:次の投　1:次フレーム

  NextSelect(this.selectPos, this.flg) {
    if (flg == 0) {
      switch (selectPos) {
        case "1011":
          selectPos = "1012";
          break;
        case "1012":
          selectPos = "1021";
          break;
        case "1021":
          selectPos = "1022";
          break;
        case "1022":
          selectPos = "1031";
          break;
        case "1031":
          selectPos = "1032";
          break;
        case "1032":
          selectPos = "1041";
          break;
        case "1041":
          selectPos = "1042";
          break;
        case "1042":
          selectPos = "1051";
          break;
        case "1051":
          selectPos = "1052";
          break;
        case "1052":
          selectPos = "1061";
          break;
        case "1061":
          selectPos = "1062";
          break;
        case "1062":
          selectPos = "1071";
          break;
        case "1071":
          selectPos = "1072";
          break;
        case "1072":
          selectPos = "1081";
          break;
        case "1081":
          selectPos = "1082";
          break;
        case "1082":
          selectPos = "1091";
          break;
        case "1091":
          selectPos = "1092";
          break;
        case "1092":
          selectPos = "1101";
          break;
        case "1101":
          selectPos = "1102";
          break;
        case "1102":
          selectPos = "1103";
          break;
        case "1103":
          selectPos = "";
          break;
      }
    } else {
      //次フレームの場合
      switch (selectPos) {
        case "1011":
          selectPos = "1021";
          break;
        case "1021":
          selectPos = "1031";
          break;
        case "1031":
          selectPos = "1041";
          break;
        case "1041":
          selectPos = "1051";
          break;
        case "1051":
          selectPos = "1061";
          break;
        case "1061":
          selectPos = "1071";
          break;
        case "1071":
          selectPos = "1081";
          break;
        case "1081":
          selectPos = "1091";
          break;
        case "1091":
          selectPos = "1101";
          break;
        case "1101":
          selectPos = "";
          break;
        case "1102":
          selectPos = "";
          break;
        case "1103":
          selectPos = "";
          break;
      }
    }
  }
}

class SetTotalScore {
  SetTotalScore() {
    log("SetTotalScore: info :SetTotalScore Called");
    //******** プレイヤー1、1フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=1] Start");
    //1フレ、2フレ、3フレがストライクの場合30
    if (s1011 == strike && s1021 == strike && s1031 == strike) {
      score101 = "30";
    }
    //1フレ、2フレがストライク3フレが通常
    if (s1011 == strike && s1021 == strike && s1031 != strike && s1031 != "") {
      score101 = (20 + intChange(s1031)).toString();
    }
    //1フレがストライク、2フレがスペア
    if (s1011 == strike && s1022 == spare) {
      score101 = "20";
    }
    //1フレがストライク、2フレが通常
    if (s1011 == strike && s1021 != strike && s1022 != spare && s1021 != "" && s1022 != "") {
      score101 = (10 + intChange(s1021) + intChange(s1022)).toString();
    }
    //1フレがスペアで2フレがストライクの場合20
    if (s1012 == spare && s1021 == strike) {
      score101 = "20";
    }
    //1フレがスペアで2フレがストライク以外
    if (s1012 == spare && s1021 != strike && s1021 != "") {
      score101 = (10 + intChange(s1021)).toString();
    }
    //1フレがストライクでもスペアでもない場合
    if (s1011 != strike && s1012 != spare && s1012 != "") {
      score101 = (intChange(s1011) + intChange(s1012)).toString();
    }

    //******** プレイヤー1、2フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=2] Start");
    //2フレ、3フレ、4フレがストライクの場合+30
    if (s1021 == strike && s1031 == strike && s1041 == strike) {
      score102 = (intChange(score101) + 30).toString();
    }
    //2フレ、3フレがストライク4フレが通常
    if (s1021 == strike && s1031 == strike && s1041 != strike && s1041 != "") {
      score102 = (intChange(score101) + 20 + intChange(s1041)).toString();
    }
    //2フレがストライク、3フレがスペア
    if (s1021 == strike && s1032 == spare) {
      score102 = (intChange(score101) + 20).toString();
    }
    //2フレがストライク、3フレが通常
    if (s1021 == strike && s1031 != strike && s1032 != spare && s1031 != "" && s1032 != "") {
      score102 = (intChange(score101) + 10 + intChange(s1031) + intChange(s1032)).toString();
    }
    //2フレがスペアで3フレがストライクの場合20
    if (s1022 == spare && s1031 == strike) {
      score102 = (intChange(score101) + 20).toString();
    }
    //2フレがスペアで3フレがストライク以外
    if (s1022 == spare && s1031 != strike && s1031 != "") {
      score102 = (intChange(score101) + 10 + intChange(s1031)).toString();
    }
    //2フレがストライクでもスペアでもない場合
    if (s1021 != strike && s1022 != spare && s1022 != "") {
//      log("SetTotalScore:debug:" + Math.parseInt(score101).toString());
      score102 = (intChange(score101) + intChange(s1021) + intChange(s1022)).toString();
    }

    //******** プレイヤー1、3フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=3] Start");
    //3フレ、4フレ、5フレがストライクの場合+30
    if (s1031 == strike && s1041 == strike && s1051 == strike) {
      score103 = (intChange(score102) + 30).toString();
    }
    //3フレ、4フレがストライク5フレが通常
    if (s1031 == strike && s1041 == strike && s1051 != strike && s1051 != "") {
      score103 = (intChange(score102) + 20 + intChange(s1051)).toString();
    }
    //3フレがストライク、4フレがスペア
    if (s1031 == strike && s1042 == spare) {
      score103 = (intChange(score102) + 20).toString();
    }
    //3フレがストライク、4フレが通常
    if (s1031 == strike && s1041 != strike && s1042 != spare && s1041 != "" && s1042 != "") {
      score103 = (intChange(score102) + 10 + intChange(s1041) + intChange(s1042)).toString();
    }
    //3フレがスペアで4フレがストライクの場合20
    if (s1032 == spare && s1041 == strike) {
      score103 = (intChange(score102) + 20).toString();
    }
    //3フレがスペアで4フレがストライク以外
    if (s1032 == spare && s1041 != strike && s1041 != "") {
      score103 = (intChange(score102) + 10 + intChange(s1041)).toString();
    }
    //3フレがストライクでもスペアでもない場合
    if (s1031 != strike && s1032 != spare && s1032 != "") {
      score103 = (intChange(score102) + intChange(s1031) + intChange(s1032)).toString();
    }

    //******** プレイヤー1、4フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=4] Start");
    //4フレ、5フレ、6フレがストライクの場合+30
    if (s1041 == strike && s1051 == strike && s1061 == strike) {
      score104 = (intChange(score103) + 30).toString();
    }
    //4フレ、5フレがストライク6フレが通常
    if (s1041 == strike && s1051 == strike && s1061 != strike && s1061 != "") {
      score104 = (intChange(score103) + 20 + intChange(s1061)).toString();
    }
    //4フレがストライク、5フレがスペア
    if (s1041 == strike && s1052 == spare) {
      score104 = (intChange(score103) + 20).toString();
    }
    //4フレがストライク、5フレが通常
    if (s1041 == strike && s1051 != strike && s1052 != spare && s1051 != "" && s1052 != "") {
      score104 = (intChange(score103) + 10 + intChange(s1051) + intChange(s1052)).toString();
    }
    //4フレがスペアで5フレがストライクの場合20
    if (s1042 == spare && s1051 == strike) {
      score104 = (intChange(score103) + 20).toString();
    }
    //4フレがスペアで5フレがストライク以外
    if (s1042 == spare && s1051 != strike && s1051 != "") {
      score104 = (intChange(score103) + 10 + intChange(s1051)).toString();
    }
    //4フレがストライクでもスペアでもない場合
    if (s1041 != strike && s1042 != spare && s1042 != "") {
      score104 = (intChange(score103) + intChange(s1041) + intChange(s1042)).toString();
    }

    //******** プレイヤー1、5フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=5] Start");
    //5フレ、6フレ、7フレがストライクの場合+30
    if (s1051 == strike && s1061 == strike && s1071 == strike) {
      score105 = (intChange(score104) + 30).toString();
    }
    //5フレ、6フレがストライク7フレが通常
    if (s1051 == strike && s1061 == strike && s1071 != strike && s1071 != "") {
      score105 = (intChange(score104) + 20 + intChange(s1071)).toString();
    }
    //5フレがストライク、6フレがスペア
    if (s1051 == strike && s1062 == spare) {
      score105 = (intChange(score104) + 20).toString();
    }
    //5フレがストライク、6フレが通常
    if (s1051 == strike && s1061 != strike && s1062 != spare && s1061 != "" && s1062 != "") {
      score105 = (intChange(score104) + 10 + intChange(s1061) + intChange(s1062)).toString();
    }
    //5フレがスペアで6フレがストライクの場合20
    if (s1052 == spare && s1061 == strike) {
      score105 = (intChange(score104) + 20).toString();
    }
    //5フレがスペアで6フレがストライク以外
    if (s1052 == spare && s1061 != strike && s1061 != "") {
      score105 = (intChange(score104) + 10 + intChange(s1061)).toString();
    }
    //5フレがストライクでもスペアでもない場合
    if (s1051 != strike && s1052 != spare && s1052 != "") {
      score105 = (intChange(score104) + intChange(s1051) + intChange(s1052)).toString();
    }

    //******** プレイヤー1、6フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=6] Start");
    //6フレ、7フレ、8フレがストライクの場合+30
    if (s1061 == strike && s1071 == strike && s1081 == strike) {
      score106 = (intChange(score105) + 30).toString();
    }
    //6フレ、7フレがストライク8フレが通常
    if (s1061 == strike && s1071 == strike && s1081 != strike && s1081 != "") {
      score106 = (intChange(score105) + 20 + intChange(s1081)).toString();
    }
    //6フレがストライク、7フレがスペア
    if (s1061 == strike && s1072 == spare) {
      score106 = (intChange(score105) + 20).toString();
    }
    //6フレがストライク、7フレが通常
    if (s1061 == strike && s1071 != strike && s1072 != spare && s1071 != "" && s1072 != "") {
      score106 = (intChange(score105) + 10 + intChange(s1071) + intChange(s1072)).toString();
    }
    //6フレがスペアで7フレがストライクの場合20
    if (s1062 == spare && s1071 == strike) {
      score106 = (intChange(score105) + 20).toString();
    }
    //6フレがスペアで7フレがストライク以外
    if (s1062 == spare && s1071 != strike && s1071 != "") {
      score106 = (intChange(score105) + 10 + intChange(s1071)).toString();
    }
    //6フレがストライクでもスペアでもない場合
    if (s1061 != strike && s1062 != spare && s1062 != "") {
      score106 = (intChange(score105) + intChange(s1061) + intChange(s1062)).toString();
    }

    //******** プレイヤー1、7フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=7] Start");
    //7フレ、8フレ、9フレがストライクの場合+30
    if (s1071 == strike && s1081 == strike && s1091 == strike) {
      score107 = (intChange(score106) + 30).toString();
    }
    //7フレ、8フレがストライク9フレが通常
    if (s1071 == strike && s1081 == strike && s1091 != strike && s1091 != "") {
      score107 = (intChange(score106) + 20 + intChange(s1091)).toString();
    }
    //7フレがストライク、8フレがスペア
    if (s1071 == strike && s1082 == spare) {
      score107 = (intChange(score106) + 20).toString();
    }
    //7フレがストライク、8フレが通常
    if (s1071 == strike && s1081 != strike && s1082 != spare && s1081 != "" && s1082 != "") {
      score107 = (intChange(score106) + 10 + intChange(s1081) + intChange(s1082)).toString();
    }
    //7フレがスペアで8フレがストライクの場合20
    if (s1072 == spare && s1081 == strike) {
      score107 = (intChange(score106) + 20).toString();
    }
    //7フレがスペアで8フレがストライク以外
    if (s1072 == spare && s1081 != strike && s1081 != "") {
      score107 = (intChange(score106) + 10 + intChange(s1081)).toString();
    }
    //7フレがストライクでもスペアでもない場合
    if (s1071 != strike && s1072 != spare && s1072 != "") {
      score107 = (intChange(score106) + intChange(s1071) + intChange(s1072)).toString();
    }

    //******** プレイヤー1、8フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=8] Start");
    //8フレ、9フレ、10フレ1投目がストライクの場合+30
    if (s1081 == strike && s1091 == strike && s1101 == strike) {
      score108 = (intChange(score107) + 30).toString();
    }
    //8フレ、9フレがストライク10フレが通常
    if (s1081 == strike && s1091 == strike && s1101 != strike && s1101 != "") {
      score108 = (intChange(score107) + 20 + intChange(s1101)).toString();
    }
    //8フレがストライク、9フレがスペア
    if (s1081 == strike && s1092 == spare) {
      score108 = (intChange(score107) + 20).toString();
    }
    //8フレがストライク、9フレが通常
    if (s1081 == strike && s1091 != strike && s1092 != spare && s1091 != "" && s1092 != "") {
      score108 = (intChange(score107) + 10 + intChange(s1091) + intChange(s1092)).toString();
    }
    //8フレがスペアで9フレがストライクの場合20
    if (s1082 == spare && s1091 == strike) {
      score108 = (intChange(score107) + 20).toString();
    }
    //8フレがスペアで9フレがストライク以外
    if (s1082 == spare && s1091 != strike && s1091 != "") {
      score108 = (intChange(score107) + 10 + intChange(s1091)).toString();
    }
    //8フレがストライクでもスペアでもない場合
    if (s1081 != strike && s1082 != spare && s1082 != "") {
      score108 = (intChange(score107) + intChange(s1081) + intChange(s1082)).toString();
    }

    //******** プレイヤー1、9フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=9] Start");
    //9フレ、10フレ1投目、10フレ2投目がストライクの場合+30
    if (s1091 == strike && s1101 == strike && s1102 == strike) {
      score109 = (intChange(score108) + 30).toString();
    }
    //9フレ、10フレ1投目がストライク10フレ2投目が通常
    if (s1091 == strike && s1101 == strike && s1102 != strike && s1102 != "") {
      score109 = (intChange(score108) + 20 + intChange(s1102)).toString();
    }
    //9フレがストライク、10フレがスペア
    if (s1091 == strike && s1102 == spare) {
      score109 = (intChange(score108) + 20).toString();
    }
    //9フレがストライク、10フレが通常
    if (s1091 == strike && s1101 != strike && s1102 != spare && s1101 != "" && s1102 != "") {
      score109 = (intChange(score108) + 10 + intChange(s1101) + intChange(s1102)).toString();
    }
    //9フレがスペアで10フレがストライクの場合20
    if (s1092 == spare && s1101 == strike) {
      score109 = (intChange(score108) + 20).toString();
    }
    //9フレがスペアで10フレがストライク以外
    if (s1092 == spare && s1101 != strike && s1101 != "") {
      score109 = (intChange(score108) + 10 + intChange(s1101)).toString();
    }
    //9フレがストライクでもスペアでもない場合
    if (s1091 != strike && s1092 != spare && s1092 != "") {
      score109 = (intChange(score108) + intChange(s1091) + intChange(s1092)).toString();
    }

    //******** プレイヤー1、10フレーム目 *********//
    log("SetTotalScore:debug:Set[player=1,flame=10] Start");
    //10フレ1投目、10フレ2投目、10フレ3投目がストライクの場合+30
    if (s1101 == strike && s1102 == strike && s1103 == strike) {
      score110 = (intChange(score109) + 30).toString();
    }
    //10フレ1投目、10フレ2投目がストライク10フレ3投目が通常
    if (s1101 == strike && s1102 == strike && s1103 != strike && s1103 != "") {
      score110 = (intChange(score109) + 20 + intChange(s1103)).toString();
    }
    //10フレ1投目がストライク、10フレ2投目が通常、10フレ3投目がスペア
    if (s1101 == strike && s1102 != strike && s1103 == spare) {
      score110 = (intChange(score109) + 20).toString();
    }
    //10フレ1投目がストライク、10フレ2,3投目が通常
    if (s1101 == strike && s1102 != strike && s1103 != spare && s1102 != "" && s1103 != "") {
      score110 = (intChange(score109) + 10 + intChange(s1102) + intChange(s1103)).toString();
    }
    //10フレ1投目が通常、2投目がスペア、3投目がストライクの場合20
    if (s1102 == spare && s1103 == strike) {
      score110 = (intChange(score109) + 20).toString();
    }
    //10フレ1投目が通常、2投目がスペア、3投目がストライク以外
    if (s1102 == spare && s1103 != strike && s1103 != "") {
      score110 = (intChange(score109) + 10 + intChange(s1103)).toString();
    }
    //10フレ1,2投目が通常
    if (s1101 != strike && s1102 != spare && s1101 != "" && s1102 != "") {
      score110 = (intChange(score109) + intChange(s1101) + intChange(s1102)).toString();
    }
  }
}

//ボタンの制御
class SetButton {
  String? selectPos;

  SetButton(this.selectPos) {
    log("SetButton: info :SetButton Called selectPos[$selectPos]");

    switch (selectPos) {
      case "1011":
      case "1021":
      case "1031":
      case "1041":
      case "1051":
      case "1061":
      case "1071":
      case "1081":
      case "1091":
      case "1101":
        btnFlgSpare = true;
        btnFlgStrike = false;
        break;

      case "1012":
      case "1022":
      case "1032":
      case "1042":
      case "1052":
      case "1062":
      case "1072":
      case "1082":
      case "1092":
        btnFlgSpare = false;
        btnFlgStrike = true;
        break;

      case "1102":
        if (s1101 == strike) {
          btnFlgSpare = true;
          btnFlgStrike = false;
        } else {
          btnFlgSpare = false;
          btnFlgStrike = true;
        }
        break;

      case "1103":
        if (s1102 == strike || s1102 == spare) {
          btnFlgSpare = true;
          btnFlgStrike = false;
        } else {
          btnFlgSpare = false;
          btnFlgStrike = true;
        }
        break;
    }
    log("SetButton: info :btnFlgSpare[$btnFlgSpare],btnFlgStrike[$btnFlgStrike]");
  }
}

String judgeGetPos(selectPos) {
  log("judgeGetPos: info :judgeGetPos Called selectPos[$selectPos]");
  //1投目がストライクの状態で、2投目を選択された場合は1投目選択にする
  String ret = "";

  //プレイヤー１
  if (selectPos == "1011") {
    //現状維持
    ret = selectPos;
  }

  if (selectPos == "1012") {
    //現状維持
    if (s1011 != "") {
      ret = selectPos;
    }
    //1投目に戻す
    if (s1011 == strike) {
      ret = "1011";
    }
  }

  if (selectPos == "1021") {
    //現状維持
    if (s1012 != "" || s1011 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1021 == "" && s1011 == "" && s1012 == "") {
      ret = "";
    }
  }

  if (selectPos == "1022") {
    //現状維持
    if (s1021 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1021 == "" && s1011 == "" && s1012 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1021 == strike) || (s1021 == "" && (s1012 != "" || s1011 == strike))) {
      ret = "1021";
    }
  }

  if (selectPos == "1031") {
    //現状維持
    if (s1022 != "" || s1021 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1031 == "" && s1021 == "" && s1022 == "") {
      ret = "";
    }
  }

  if (selectPos == "1032") {
    //現状維持
    if (s1031 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1031 == "" && s1021 == "" && s1022 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1031 == strike) || (s1031 == "" && (s1022 != "" || s1021 == strike))) {
      ret = "1031";
    }
  }

  if (selectPos == "1041") {
    //現状維持
    if (s1032 != "" || s1031 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1041 == "" && s1031 == "" && s1032 == "") {
      ret = "";
    }
  }

  if (selectPos == "1042") {
    //現状維持
    if (s1041 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1041 == "" && s1031 == "" && s1032 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1041 == strike) || (s1041 == "" && (s1032 != "" || s1031 == strike))) {
      ret = "1041";
    }
  }

  if (selectPos == "1051") {
    //現状維持
    if (s1042 != "" || s1041 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1051 == "" && s1041 == "" && s1042 == "") {
      ret = "";
    }
  }

  if (selectPos == "1052") {
    //現状維持
    if (s1051 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1051 == "" && s1041 == "" && s1042 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1051 == strike) || (s1051 == "" && (s1042 != "" || s1041 == strike))) {
      ret = "1051";
    }
  }

  if (selectPos == "1061") {
    //現状維持
    if (s1052 != "" || s1051 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1061 == "" && s1051 == "" && s1052 == "") {
      ret = "";
    }
  }

  if (selectPos == "1062") {
    //現状維持
    if (s1061 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1061 == "" && s1051 == "" && s1052 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1061 == strike) || (s1061 == "" && (s1052 != "" || s1051 == strike))) {
      ret = "1061";
    }
  }

  if (selectPos == "1071") {
    //現状維持
    if (s1062 != "" || s1061 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1071 == "" && s1061 == "" && s1062 == "") {
      ret = "";
    }
  }

  if (selectPos == "1072") {
    //現状維持
    if (s1071 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1071 == "" && s1061 == "" && s1062 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1071 == strike) || (s1071 == "" && (s1062 != "" || s1061 == strike))) {
      ret = "1071";
    }
  }

  if (selectPos == "1081") {
    //現状維持
    if (s1072 != "" || s1071 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1081 == "" && s1071 == "" && s1072 == "") {
      ret = "";
    }
  }

  if (selectPos == "1082") {
    //現状維持
    if (s1081 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1081 == "" && s1071 == "" && s1072 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1081 == strike) || (s1081 == "" && (s1072 != "" || s1071 == strike))) {
      ret = "1081";
    }
  }

  if (selectPos == "1091") {
    //現状維持
    if (s1082 != "" || s1081 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1091 == "" && s1081 == "" && s1082 == "") {
      ret = "";
    }
  }

  if (selectPos == "1092") {
    //現状維持
    if (s1091 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1091 == "" && s1081 == "" && s1082 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1091 == strike) || (s1091 == "" && (s1082 != "" || s1081 == strike))) {
      ret = "1091";
    }
  }

  if (selectPos == "1101") {
    //現状維持
    if (s1092 != "" || s1091 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s1091 == "" && s1092 == "") {
      ret = "";
    }
  }

  if (selectPos == "1102") {
    //現状維持
    if (s1101 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s1091 == "" && s1092 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1101 == "" && (s1092 != "" || s1091 == strike))) {
      ret = "1101";
    }
  }

  if (selectPos == "1103") {
    //現状維持
    if (s1101 == strike || s1102 == spare) {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s1102 == "" && s1091 == "" && s1092 == "") {
      ret = "";
    }
    //2投目に戻す
    if ((s1101 != "" && s1102 == "") || (s1101 != strike && s1101 != "" && s1102 != spare)) {
      ret = "1102";
    }
    //1投目に戻す
    if ((s1101 == "" && (s1092 != "" || s1091 == strike))) {
      ret = "1101";
    }
  }

  log("judgeGetPos: info :judgeGetPos return selectPos[$ret]");
  return ret;
}
