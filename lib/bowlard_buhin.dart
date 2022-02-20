import 'dart:developer';

import 'package:flutter/material.dart';

import 'common_buhin.dart';

String s1011 = "", s1012 = "", s1021 = "", s1022 = "", s1031 = "", s1032 = "", s1041 = "", s1042 = "", s1051 = "", s1052 = "", s1061 = "", s1062 = "", s1071 = "", s1072 = "", s1081 = "", s1082 = "", s1091 = "", s1092 = "", s1101 = "", s1102 = "", s1103 = "", s2011 = "", s2012 = "", s2021 = "", s2022 = "", s2031 = "", s2032 = "", s2041 = "", s2042 = "", s2051 = "", s2052 = "", s2061 = "", s2062 = "", s2071 = "", s2072 = "", s2081 = "", s2082 = "", s2091 = "", s2092 = "", s2101 = "", s2102 = "", s2103 = "";
String score101 = "", score102 = "", score103 = "", score104 = "", score105 = "", score106 = "", score107 = "", score108 = "", score109 = "", score110 = "", score201 = "", score202 = "", score203 = "", score204 = "", score205 = "", score206 = "", score207 = "", score208 = "", score209 = "", score210 = "";

bool btnFlgStrike = false, btnFlgSpare = true;
String selectPos = "1011";
String player1 = "プレイヤー１";
String player2 = "プレイヤー２";

String spare = "/";
String strike = "X";
bool muki = true;

Color color1011 = Colors.yellow,
    color1012 = Colors.white,
    color1021 = Colors.white,
    color1022 = Colors.white,
    color1031 = Colors.white,
    color1032 = Colors.white,
    color1041 = Colors.white,
    color1042 = Colors.white,
    color1051 = Colors.white,
    color1052 = Colors.white,
    color1061 = Colors.white,
    color1062 = Colors.white,
    color1071 = Colors.white,
    color1072 = Colors.white,
    color1081 = Colors.white,
    color1082 = Colors.white,
    color1091 = Colors.white,
    color1092 = Colors.white,
    color1101 = Colors.white,
    color1102 = Colors.white,
    color1103 = Colors.white,
    color2011 = Colors.white,
    color2012 = Colors.white,
    color2021 = Colors.white,
    color2022 = Colors.white,
    color2031 = Colors.white,
    color2032 = Colors.white,
    color2041 = Colors.white,
    color2042 = Colors.white,
    color2051 = Colors.white,
    color2052 = Colors.white,
    color2061 = Colors.white,
    color2062 = Colors.white,
    color2071 = Colors.white,
    color2072 = Colors.white,
    color2081 = Colors.white,
    color2082 = Colors.white,
    color2091 = Colors.white,
    color2092 = Colors.white,
    color2101 = Colors.white,
    color2102 = Colors.white,
    color2103 = Colors.white;

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

      case "2011":
        s2011 = "$score";
        s2012 = "";
        score201 = "";
        break;
      case "2012":
        if ((intChange(s2011) + intChange("$score")) >= 10) {
          s2012 = spare;
          score201 = "";
        } else {
          s2012 = "$score";
        }
        break;
      case "2021":
        s2021 = "$score";
        s2022 = "";
        score202 = "";
        break;
      case "2022":
        if ((intChange(s2021) + intChange("$score")) >= 10) {
          s2022 = spare;
          score202 = "";
        } else {
          s2022 = "$score";
        }
        break;
      case "2031":
        s2031 = "$score";
        s2032 = "";
        score203 = "";
        break;
      case "2032":
        if ((intChange(s2031) + intChange("$score")) >= 10) {
          s2032 = spare;
          score203 = "";
        } else {
          s2032 = "$score";
        }
        break;
      case "2041":
        s2041 = "$score";
        s2042 = "";
        score204 = "";
        break;
      case "2042":
        if ((intChange(s2041) + intChange("$score")) >= 10) {
          s2042 = spare;
          score204 = "";
        } else {
          s2042 = "$score";
        }
        break;
      case "2051":
        s2051 = "$score";
        s2052 = "";
        score205 = "";
        break;
      case "2052":
        if ((intChange(s2051) + intChange("$score")) >= 10) {
          s2052 = spare;
          score205 = "";
        } else {
          s2052 = "$score";
        }
        break;
      case "2061":
        s2061 = "$score";
        s2062 = "";
        score206 = "";
        break;
      case "2062":
        if ((intChange(s2061) + intChange("$score")) >= 10) {
          s2062 = spare;
          score206 = "";
        } else {
          s2062 = "$score";
        }
        break;
      case "2071":
        s2071 = "$score";
        s2072 = "";
        score207 = "";
        break;
      case "2072":
        if ((intChange(s2071) + intChange("$score")) >= 10) {
          s2072 = spare;
          score207 = "";
        } else {
          s2072 = "$score";
        }
        break;
      case "2081":
        s2081 = "$score";
        s2082 = "";
        score208 = "";
        break;
      case "2082":
        if ((intChange(s2081) + intChange("$score")) >= 10) {
          s2082 = spare;
          score208 = "";
        } else {
          s2082 = "$score";
        }
        break;
      case "2091":
        s2091 = "$score";
        s2092 = "";
        score209 = "";
        break;
      case "2092":
        if ((intChange(s2091) + intChange("$score")) >= 10) {
          s2092 = spare;
          score209 = "";
        } else {
          s2092 = "$score";
        }
        break;
      case "2101":
        s2101 = "$score";
        s2102 = "";
        s2103 = "";
        score210 = "";
        break;
      case "2102":
        if (s2101 == strike || score == spare) {
          s2102 = "$score";
          s2103 = "";
          score210 = "";
        } else {
          if ((intChange(s2101) + intChange("$score")) >= 10) {
            s2102 = spare;
            s2103 = "";
            score210 = "";
          } else {
            s2102 = "$score";
            s2103 = "";
            score210 = "";
          }
        }
        break;
      case "2103":
        if (s2102 == strike || s2102 == spare) {
          s2103 = "$score";
        } else {
          if ((intChange(s2102) + intChange("$score")) >= 10) {
            s2103 = spare;
          } else {
            s2103 = "$score";
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
    color2011 = Colors.white;
    color2012 = Colors.white;
    color2021 = Colors.white;
    color2022 = Colors.white;
    color2031 = Colors.white;
    color2032 = Colors.white;
    color2041 = Colors.white;
    color2042 = Colors.white;
    color2051 = Colors.white;
    color2052 = Colors.white;
    color2061 = Colors.white;
    color2062 = Colors.white;
    color2071 = Colors.white;
    color2072 = Colors.white;
    color2081 = Colors.white;
    color2082 = Colors.white;
    color2091 = Colors.white;
    color2092 = Colors.white;
    color2101 = Colors.white;
    color2102 = Colors.white;
    color2103 = Colors.white;

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
      case "2011":
        color2011 = Colors.yellow;
        break;
      case "2012":
        color2012 = Colors.yellow;
        break;
      case "2021":
        color2021 = Colors.yellow;
        break;
      case "2022":
        color2022 = Colors.yellow;
        break;
      case "2031":
        color2031 = Colors.yellow;
        break;
      case "2032":
        color2032 = Colors.yellow;
        break;
      case "2041":
        color2041 = Colors.yellow;
        break;
      case "2042":
        color2042 = Colors.yellow;
        break;
      case "2051":
        color2051 = Colors.yellow;
        break;
      case "2052":
        color2052 = Colors.yellow;
        break;
      case "2061":
        color2061 = Colors.yellow;
        break;
      case "2062":
        color2062 = Colors.yellow;
        break;
      case "2071":
        color2071 = Colors.yellow;
        break;
      case "2072":
        color2072 = Colors.yellow;
        break;
      case "2081":
        color2081 = Colors.yellow;
        break;
      case "2082":
        color2082 = Colors.yellow;
        break;
      case "2091":
        color2091 = Colors.yellow;
        break;
      case "2092":
        color2092 = Colors.yellow;
        break;
      case "2101":
        color2101 = Colors.yellow;
        break;
      case "2102":
        color2102 = Colors.yellow;
        break;
      case "2103":
        color2103 = Colors.yellow;
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
          selectPos = "2011";
          break;
        case "1021":
          selectPos = "1022";
          break;
        case "1022":
          selectPos = "2021";
          break;
        case "1031":
          selectPos = "1032";
          break;
        case "1032":
          selectPos = "2031";
          break;
        case "1041":
          selectPos = "1042";
          break;
        case "1042":
          selectPos = "2041";
          break;
        case "1051":
          selectPos = "1052";
          break;
        case "1052":
          selectPos = "2051";
          break;
        case "1061":
          selectPos = "1062";
          break;
        case "1062":
          selectPos = "2061";
          break;
        case "1071":
          selectPos = "1072";
          break;
        case "1072":
          selectPos = "2071";
          break;
        case "1081":
          selectPos = "1082";
          break;
        case "1082":
          selectPos = "2081";
          break;
        case "1091":
          selectPos = "1092";
          break;
        case "1092":
          selectPos = "2091";
          break;
        case "1101":
          selectPos = "1102";
          break;
        case "1102":
          selectPos = "1103";
          break;
        case "1103":
          selectPos = "2101";
          break;

        case "2011":
          selectPos = "2012";
          break;
        case "2012":
          selectPos = "1021";
          break;
        case "2021":
          selectPos = "2022";
          break;
        case "2022":
          selectPos = "1031";
          break;
        case "2031":
          selectPos = "2032";
          break;
        case "2032":
          selectPos = "1041";
          break;
        case "2041":
          selectPos = "2042";
          break;
        case "2042":
          selectPos = "1051";
          break;
        case "2051":
          selectPos = "2052";
          break;
        case "2052":
          selectPos = "1061";
          break;
        case "2061":
          selectPos = "2062";
          break;
        case "2062":
          selectPos = "1071";
          break;
        case "2071":
          selectPos = "2072";
          break;
        case "2072":
          selectPos = "1081";
          break;
        case "2081":
          selectPos = "2082";
          break;
        case "2082":
          selectPos = "1091";
          break;
        case "2091":
          selectPos = "2092";
          break;
        case "2092":
          selectPos = "1101";
          break;
        case "2101":
          selectPos = "2102";
          break;
        case "2102":
          selectPos = "2103";
          break;
        case "2103":
          selectPos = "";
          break;
      }
    } else {
      //次フレームの場合
      switch (selectPos) {
        case "1011":
          selectPos = "2011";
          break;
        case "1021":
          selectPos = "2021";
          break;
        case "1031":
          selectPos = "2031";
          break;
        case "1041":
          selectPos = "2041";
          break;
        case "1051":
          selectPos = "2051";
          break;
        case "1061":
          selectPos = "2061";
          break;
        case "1071":
          selectPos = "2071";
          break;
        case "1081":
          selectPos = "2081";
          break;
        case "1091":
          selectPos = "2091";
          break;
        case "1101":
          selectPos = "2101";
          break;
        case "1102":
          selectPos = "2101";
          break;
        case "1103":
          selectPos = "2101";
          break;

        case "2011":
          selectPos = "1021";
          break;
        case "2021":
          selectPos = "1031";
          break;
        case "2031":
          selectPos = "1041";
          break;
        case "2041":
          selectPos = "1051";
          break;
        case "2051":
          selectPos = "1061";
          break;
        case "2061":
          selectPos = "1071";
          break;
        case "2071":
          selectPos = "1081";
          break;
        case "2081":
          selectPos = "1091";
          break;
        case "2091":
          selectPos = "1101";
          break;
        case "2101":
          selectPos = "";
          break;
        case "2102":
          selectPos = "";
          break;
        case "2103":
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

    //******** プレイヤー2、1フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=1] Start");
    //1フレ、2フレ、3フレがストライクの場合30
    if (s2011 == strike && s2021 == strike && s2031 == strike) {
      score201 = "30";
    }
    //1フレ、2フレがストライク3フレが通常
    if (s2011 == strike && s2021 == strike && s2031 != strike && s2031 != "") {
      score201 = (20 + intChange(s2031)).toString();
    }
    //1フレがストライク、2フレがスペア
    if (s2011 == strike && s2022 == spare) {
      score201 = "20";
    }
    //1フレがストライク、2フレが通常
    if (s2011 == strike && s2021 != strike && s2022 != spare && s2021 != "" && s2022 != "") {
      score201 = (10 + intChange(s2021) + intChange(s2022)).toString();
    }
    //1フレがスペアで2フレがストライクの場合20
    if (s2012 == spare && s2021 == strike) {
      score201 = "20";
    }
    //1フレがスペアで2フレがストライク以外
    if (s2012 == spare && s2021 != strike && s2021 != "") {
      score201 = (10 + intChange(s2021)).toString();
    }
    //1フレがストライクでもスペアでもない場合
    if (s2011 != strike && s2012 != spare && s2012 != "") {
      score201 = (intChange(s2011) + intChange(s2012)).toString();
    }

    //******** プレイヤー2、2フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=2] Start");
    //2フレ、3フレ、4フレがストライクの場合+30
    if (s2021 == strike && s2031 == strike && s2041 == strike) {
      score202 = (intChange(score201) + 30).toString();
    }
    //2フレ、3フレがストライク4フレが通常
    if (s2021 == strike && s2031 == strike && s2041 != strike && s2041 != "") {
      score202 = (intChange(score201) + 20 + intChange(s2041)).toString();
    }
    //2フレがストライク、3フレがスペア
    if (s2021 == strike && s2032 == spare) {
      score202 = (intChange(score201) + 20).toString();
    }
    //2フレがストライク、3フレが通常
    if (s2021 == strike && s2031 != strike && s2032 != spare && s2031 != "" && s2032 != "") {
      score202 = (intChange(score201) + 10 + intChange(s2031) + intChange(s2032)).toString();
    }
    //2フレがスペアで3フレがストライクの場合20
    if (s2022 == spare && s2031 == strike) {
      score202 = (intChange(score201) + 20).toString();
    }
    //2フレがスペアで3フレがストライク以外
    if (s2022 == spare && s2031 != strike && s2031 != "") {
      score202 = (intChange(score201) + 10 + intChange(s2031)).toString();
    }
    //2フレがストライクでもスペアでもない場合
    if (s2021 != strike && s2022 != spare && s2022 != "") {
      score202 = (intChange(score201) + intChange(s2021) + intChange(s2022)).toString();
    }

    //******** プレイヤー2、3フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=3] Start");
    //3フレ、4フレ、5フレがストライクの場合+30
    if (s2031 == strike && s2041 == strike && s2051 == strike) {
      score203 = (intChange(score202) + 30).toString();
    }
    //3フレ、4フレがストライク5フレが通常
    if (s2031 == strike && s2041 == strike && s2051 != strike && s2051 != "") {
      score203 = (intChange(score202) + 20 + intChange(s2051)).toString();
    }
    //3フレがストライク、4フレがスペア
    if (s2031 == strike && s2042 == spare) {
      score203 = (intChange(score202) + 20).toString();
    }
    //3フレがストライク、4フレが通常
    if (s2031 == strike && s2041 != strike && s2042 != spare && s2041 != "" && s2042 != "") {
      score203 = (intChange(score202) + 10 + intChange(s2041) + intChange(s2042)).toString();
    }
    //3フレがスペアで4フレがストライクの場合20
    if (s2032 == spare && s2041 == strike) {
      score203 = (intChange(score202) + 20).toString();
    }
    //3フレがスペアで4フレがストライク以外
    if (s2032 == spare && s2041 != strike && s2041 != "") {
      score203 = (intChange(score202) + 10 + intChange(s2041)).toString();
    }
    //3フレがストライクでもスペアでもない場合
    if (s2031 != strike && s2032 != spare && s2032 != "") {
      score203 = (intChange(score202) + intChange(s2031) + intChange(s2032)).toString();
    }

    //******** プレイヤー2、4フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=4] Start");
    //4フレ、5フレ、6フレがストライクの場合+30
    if (s2041 == strike && s2051 == strike && s2061 == strike) {
      score204 = (intChange(score203) + 30).toString();
    }
    //4フレ、5フレがストライク6フレが通常
    if (s2041 == strike && s2051 == strike && s2061 != strike && s2061 != "") {
      score204 = (intChange(score203) + 20 + intChange(s2061)).toString();
    }
    //4フレがストライク、5フレがスペア
    if (s2041 == strike && s2052 == spare) {
      score204 = (intChange(score203) + 20).toString();
    }
    //4フレがストライク、5フレが通常
    if (s2041 == strike && s2051 != strike && s2052 != spare && s2051 != "" && s2052 != "") {
      score204 = (intChange(score203) + 10 + intChange(s2051) + intChange(s2052)).toString();
    }
    //4フレがスペアで5フレがストライクの場合20
    if (s2042 == spare && s2051 == strike) {
      score204 = (intChange(score203) + 20).toString();
    }
    //4フレがスペアで5フレがストライク以外
    if (s2042 == spare && s2051 != strike && s2051 != "") {
      score204 = (intChange(score203) + 10 + intChange(s2051)).toString();
    }
    //4フレがストライクでもスペアでもない場合
    if (s2041 != strike && s2042 != spare && s2042 != "") {
      score204 = (intChange(score203) + intChange(s2041) + intChange(s2042)).toString();
    }

    //******** プレイヤー2、5フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=5] Start");
    //5フレ、6フレ、7フレがストライクの場合+30
    if (s2051 == strike && s2061 == strike && s2071 == strike) {
      score205 = (intChange(score204) + 30).toString();
    }
    //5フレ、6フレがストライク7フレが通常
    if (s2051 == strike && s2061 == strike && s2071 != strike && s2071 != "") {
      score205 = (intChange(score204) + 20 + intChange(s2071)).toString();
    }
    //5フレがストライク、6フレがスペア
    if (s2051 == strike && s2062 == spare) {
      score205 = (intChange(score204) + 20).toString();
    }
    //5フレがストライク、6フレが通常
    if (s2051 == strike && s2061 != strike && s2062 != spare && s2061 != "" && s2062 != "") {
      score205 = (intChange(score204) + 10 + intChange(s2061) + intChange(s2062)).toString();
    }
    //5フレがスペアで6フレがストライクの場合20
    if (s2052 == spare && s2061 == strike) {
      score205 = (intChange(score204) + 20).toString();
    }
    //5フレがスペアで6フレがストライク以外
    if (s2052 == spare && s2061 != strike && s2061 != "") {
      score205 = (intChange(score204) + 10 + intChange(s2061)).toString();
    }
    //5フレがストライクでもスペアでもない場合
    if (s2051 != strike && s2052 != spare && s2052 != "") {
      score205 = (intChange(score204) + intChange(s2051) + intChange(s2052)).toString();
    }

    //******** プレイヤー2、6フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=6] Start");
    //6フレ、7フレ、8フレがストライクの場合+30
    if (s2061 == strike && s2071 == strike && s2081 == strike) {
      score206 = (intChange(score205) + 30).toString();
    }
    //6フレ、7フレがストライク8フレが通常
    if (s2061 == strike && s2071 == strike && s2081 != strike && s2081 != "") {
      score206 = (intChange(score205) + 20 + intChange(s2081)).toString();
    }
    //6フレがストライク、7フレがスペア
    if (s2061 == strike && s2072 == spare) {
      score206 = (intChange(score205) + 20).toString();
    }
    //6フレがストライク、7フレが通常
    if (s2061 == strike && s2071 != strike && s2072 != spare && s2071 != "" && s2072 != "") {
      score206 = (intChange(score205) + 10 + intChange(s2071) + intChange(s2072)).toString();
    }
    //6フレがスペアで7フレがストライクの場合20
    if (s2062 == spare && s2071 == strike) {
      score206 = (intChange(score205) + 20).toString();
    }
    //6フレがスペアで7フレがストライク以外
    if (s2062 == spare && s2071 != strike && s2071 != "") {
      score206 = (intChange(score205) + 10 + intChange(s2071)).toString();
    }
    //6フレがストライクでもスペアでもない場合
    if (s2061 != strike && s2062 != spare && s2062 != "") {
      score206 = (intChange(score205) + intChange(s2061) + intChange(s2062)).toString();
    }

    //******** プレイヤー2、7フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=7] Start");
    //7フレ、8フレ、9フレがストライクの場合+30
    if (s2071 == strike && s2081 == strike && s2091 == strike) {
      score207 = (intChange(score206) + 30).toString();
    }
    //7フレ、8フレがストライク9フレが通常
    if (s2071 == strike && s2081 == strike && s2091 != strike && s2091 != "") {
      score207 = (intChange(score206) + 20 + intChange(s2091)).toString();
    }
    //7フレがストライク、8フレがスペア
    if (s2071 == strike && s2082 == spare) {
      score207 = (intChange(score206) + 20).toString();
    }
    //7フレがストライク、8フレが通常
    if (s2071 == strike && s2081 != strike && s2082 != spare && s2081 != "" && s2082 != "") {
      score207 = (intChange(score206) + 10 + intChange(s2081) + intChange(s2082)).toString();
    }
    //7フレがスペアで8フレがストライクの場合20
    if (s2072 == spare && s2081 == strike) {
      score207 = (intChange(score206) + 20).toString();
    }
    //7フレがスペアで8フレがストライク以外
    if (s2072 == spare && s2081 != strike && s2081 != "") {
      score207 = (intChange(score206) + 10 + intChange(s2081)).toString();
    }
    //7フレがストライクでもスペアでもない場合
    if (s2071 != strike && s2072 != spare && s2072 != "") {
      score207 = (intChange(score206) + intChange(s2071) + intChange(s2072)).toString();
    }

    //******** プレイヤー2、8フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=8] Start");
    //8フレ、9フレ、10フレ1投目がストライクの場合+30
    if (s2081 == strike && s2091 == strike && s2101 == strike) {
      score208 = (intChange(score207) + 30).toString();
    }
    //8フレ、9フレがストライク10フレが通常
    if (s2081 == strike && s2091 == strike && s2101 != strike && s2101 != "") {
      score208 = (intChange(score207) + 20 + intChange(s2101)).toString();
    }
    //8フレがストライク、9フレがスペア
    if (s2081 == strike && s2092 == spare) {
      score208 = (intChange(score207) + 20).toString();
    }
    //8フレがストライク、9フレが通常
    if (s2081 == strike && s2091 != strike && s2092 != spare && s2091 != "" && s2092 != "") {
      score208 = (intChange(score207) + 10 + intChange(s2091) + intChange(s2092)).toString();
    }
    //8フレがスペアで9フレがストライクの場合20
    if (s2082 == spare && s2091 == strike) {
      score208 = (intChange(score207) + 20).toString();
    }
    //8フレがスペアで9フレがストライク以外
    if (s2082 == spare && s2091 != strike && s2091 != "") {
      score208 = (intChange(score207) + 10 + intChange(s2091)).toString();
    }
    //8フレがストライクでもスペアでもない場合
    if (s2081 != strike && s2082 != spare && s2082 != "") {
      score208 = (intChange(score207) + intChange(s2081) + intChange(s2082)).toString();
    }

    //******** プレイヤー2、9フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=9] Start");
    //9フレ、10フレ1投目、10フレ2投目がストライクの場合+30
    if (s2091 == strike && s2101 == strike && s2102 == strike) {
      score209 = (intChange(score208) + 30).toString();
    }
    //9フレ、10フレ1投目がストライク10フレ2投目が通常
    if (s2091 == strike && s2101 == strike && s2102 != strike && s2102 != "") {
      score209 = (intChange(score208) + 20 + intChange(s2102)).toString();
    }
    //9フレがストライク、10フレがスペア
    if (s2091 == strike && s2102 == spare) {
      score209 = (intChange(score208) + 20).toString();
    }
    //9フレがストライク、10フレが通常
    if (s2091 == strike && s2101 != strike && s2102 != spare && s2101 != "" && s2102 != "") {
      score209 = (intChange(score208) + 10 + intChange(s2101) + intChange(s2102)).toString();
    }
    //9フレがスペアで10フレがストライクの場合20
    if (s2092 == spare && s2101 == strike) {
      score209 = (intChange(score208) + 20).toString();
    }
    //9フレがスペアで10フレがストライク以外
    if (s2092 == spare && s2101 != strike && s2101 != "") {
      score209 = (intChange(score208) + 10 + intChange(s2101)).toString();
    }
    //9フレがストライクでもスペアでもない場合
    if (s2091 != strike && s2092 != spare && s2092 != "") {
      score209 = (intChange(score208) + intChange(s2091) + intChange(s2092)).toString();
    }

    //******** プレイヤー2、10フレーム目 *********//
    log("SetTotalScore:debug:Set[player=2,flame=10] Start");
    //10フレ1投目、10フレ2投目、10フレ3投目がストライクの場合+30
    if (s2101 == strike && s2102 == strike && s2103 == strike) {
      score210 = (intChange(score209) + 30).toString();
    }
    //10フレ1投目、10フレ2投目がストライク10フレ3投目が通常
    if (s2101 == strike && s2102 == strike && s2103 != strike && s2103 != "") {
      score210 = (intChange(score209) + 20 + intChange(s2103)).toString();
    }
    //10フレ1投目がストライク、10フレ2投目が通常、10フレ3投目がスペア
    if (s2101 == strike && s2102 != strike && s2103 == spare) {
      score210 = (intChange(score209) + 20).toString();
    }
    //10フレ1投目がストライク、10フレ2,3投目が通常
    if (s2101 == strike && s2102 != strike && s2103 != spare && s2102 != "" && s2103 != "") {
      score210 = (intChange(score209) + 10 + intChange(s2102) + intChange(s2103)).toString();
    }
    //10フレ1投目が通常、2投目がスペア、3投目がストライクの場合20
    if (s2102 == spare && s2103 == strike) {
      score210 = (intChange(score209) + 20).toString();
    }
    //10フレ1投目が通常、2投目がスペア、3投目がストライク以外
    if (s2102 == spare && s2103 != strike && s2103 != "") {
      score210 = (intChange(score209) + 10 + intChange(s2103)).toString();
    }
    //10フレ1,2投目が通常
    if (s2101 != strike && s2102 != spare && s2101 != "" && s2102 != "") {
      score210 = (intChange(score209) + intChange(s2101) + intChange(s2102)).toString();
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
      case "2011":
      case "2021":
      case "2031":
      case "2041":
      case "2051":
      case "2061":
      case "2071":
      case "2081":
      case "2091":
      case "2101":
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
      case "2012":
      case "2022":
      case "2032":
      case "2042":
      case "2052":
      case "2062":
      case "2072":
      case "2082":
      case "2092":
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

      case "2102":
        if (s2101 == strike) {
          btnFlgSpare = true;
          btnFlgStrike = false;
        } else {
          btnFlgSpare = false;
          btnFlgStrike = true;
        }
        break;

      case "2103":
        if (s2102 == strike || s2102 == spare) {
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
    if (s2012 != "" || s2011 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1021 == "" && s2011 == "" && s2012 == "") {
      ret = "";
    }
  }

  if (selectPos == "1022") {
    //現状維持
    if (s1021 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1021 == "" && s2011 == "" && s2012 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1021 == strike) || (s1021 == "" && (s2012 != "" || s2011 == strike))) {
      ret = "1021";
    }
  }

  if (selectPos == "1031") {
    //現状維持
    if (s2022 != "" || s2021 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1031 == "" && s2021 == "" && s2022 == "") {
      ret = "";
    }
  }

  if (selectPos == "1032") {
    //現状維持
    if (s1031 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1031 == "" && s2021 == "" && s2022 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1031 == strike) || (s1031 == "" && (s2022 != "" || s2021 == strike))) {
      ret = "1031";
    }
  }

  if (selectPos == "1041") {
    //現状維持
    if (s2032 != "" || s2031 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1041 == "" && s2031 == "" && s2032 == "") {
      ret = "";
    }
  }

  if (selectPos == "1042") {
    //現状維持
    if (s1041 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1041 == "" && s2031 == "" && s2032 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1041 == strike) || (s1041 == "" && (s2032 != "" || s2031 == strike))) {
      ret = "1041";
    }
  }

  if (selectPos == "1051") {
    //現状維持
    if (s2042 != "" || s2041 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1051 == "" && s2041 == "" && s2042 == "") {
      ret = "";
    }
  }

  if (selectPos == "1052") {
    //現状維持
    if (s1051 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1051 == "" && s2041 == "" && s2042 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1051 == strike) || (s1051 == "" && (s2042 != "" || s2041 == strike))) {
      ret = "1051";
    }
  }

  if (selectPos == "1061") {
    //現状維持
    if (s2052 != "" || s2051 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1061 == "" && s2051 == "" && s2052 == "") {
      ret = "";
    }
  }

  if (selectPos == "1062") {
    //現状維持
    if (s1061 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1061 == "" && s2051 == "" && s2052 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1061 == strike) || (s1061 == "" && (s2052 != "" || s2051 == strike))) {
      ret = "1061";
    }
  }

  if (selectPos == "1071") {
    //現状維持
    if (s2062 != "" || s2061 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1071 == "" && s2061 == "" && s2062 == "") {
      ret = "";
    }
  }

  if (selectPos == "1072") {
    //現状維持
    if (s1071 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1071 == "" && s2061 == "" && s2062 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1071 == strike) || (s1071 == "" && (s2062 != "" || s2061 == strike))) {
      ret = "1071";
    }
  }

  if (selectPos == "1081") {
    //現状維持
    if (s2072 != "" || s2071 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1081 == "" && s2071 == "" && s2072 == "") {
      ret = "";
    }
  }

  if (selectPos == "1082") {
    //現状維持
    if (s1081 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1081 == "" && s2071 == "" && s2072 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1081 == strike) || (s1081 == "" && (s2072 != "" || s2071 == strike))) {
      ret = "1081";
    }
  }

  if (selectPos == "1091") {
    //現状維持
    if (s2082 != "" || s2081 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1091 == "" && s2081 == "" && s2082 == "") {
      ret = "";
    }
  }

  if (selectPos == "1092") {
    //現状維持
    if (s1091 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1091 == "" && s2081 == "" && s2082 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1091 == strike) || (s1091 == "" && (s2082 != "" || s2081 == strike))) {
      ret = "1091";
    }
  }

  if (selectPos == "1101") {
    //現状維持
    if (s2092 != "" || s2091 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s2091 == "" && s2092 == "") {
      ret = "";
    }
  }

  if (selectPos == "1102") {
    //現状維持
    if (s1101 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s2091 == "" && s2092 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s1101 == "" && (s2092 != "" || s2091 == strike))) {
      ret = "1101";
    }
  }

  if (selectPos == "1103") {
    //現状維持
    if (s1101 == strike || s1102 == spare) {
      ret = selectPos;
    }
    //動かさない
    if (s1101 == "" && s1102 == "" && s2091 == "" && s2092 == "") {
      ret = "";
    }
    //2投目に戻す
    if ((s1101 != "" && s1102 == "") || (s1101 != strike && s1101 != "" && s1102 != spare)) {
      ret = "1102";
    }
    //1投目に戻す
    if ((s1101 == "" && (s2092 != "" || s2091 == strike))) {
      ret = "1101";
    }
  }

  //プレイヤー２
  if (selectPos == "2011") {
    //現状維持
    if (s1012 != "" || s1011 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s1011 == "" && s1012 == "") {
      ret = "";
    }
  }

  if (selectPos == "2012") {
    //現状維持
    if (s2011 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2011 == "" && s1011 == "" && s1012 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2011 == strike) || (s2011 == "" && (s1012 != "" || s1011 == strike))) {
      ret = "2011";
    }
  }

  if (selectPos == "2021") {
    //現状維持
    if (s1022 != "" || s1021 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2021 == "" && s1021 == "" && s1022 == "") {
      ret = "";
    }
  }

  if (selectPos == "2022") {
    //現状維持
    if (s2021 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2021 == "" && s1021 == "" && s1022 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2021 == strike) || (s2021 == "" && (s1022 != "" || s1021 == strike))) {
      ret = "2021";
    }
  }

  if (selectPos == "2031") {
    //現状維持
    if (s1032 != "" || s1031 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2031 == "" && s1031 == "" && s1032 == "") {
      ret = "";
    }
  }

  if (selectPos == "2032") {
    //現状維持
    if (s2031 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2031 == "" && s1031 == "" && s1032 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2031 == strike) || (s2031 == "" && (s1032 != "" || s1031 == strike))) {
      ret = "2031";
    }
  }

  if (selectPos == "2041") {
    //現状維持
    if (s1042 != "" || s1041 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2041 == "" && s1041 == "" && s1042 == "") {
      ret = "";
    }
  }

  if (selectPos == "2042") {
    //現状維持
    if (s2041 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2041 == "" && s1041 == "" && s1042 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2041 == strike) || (s2041 == "" && (s1042 != "" || s1041 == strike))) {
      ret = "2041";
    }
  }

  if (selectPos == "2051") {
    //現状維持
    if (s1052 != "" || s1051 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2051 == "" && s1051 == "" && s1052 == "") {
      ret = "";
    }
  }

  if (selectPos == "2052") {
    //現状維持
    if (s2051 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2051 == "" && s1051 == "" && s1052 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2051 == strike) || (s2051 == "" && (s1052 != "" || s1051 == strike))) {
      ret = "2051";
    }
  }

  if (selectPos == "2061") {
    //現状維持
    if (s1062 != "" || s1061 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2061 == "" && s1061 == "" && s1062 == "") {
      ret = "";
    }
  }

  if (selectPos == "2062") {
    //現状維持
    if (s2061 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2061 == "" && s1061 == "" && s1062 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2061 == strike) || (s2061 == "" && (s1062 != "" || s1061 == strike))) {
      ret = "2061";
    }
  }

  if (selectPos == "2071") {
    //現状維持
    if (s1072 != "" || s1071 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2071 == "" && s1071 == "" && s1072 == "") {
      ret = "";
    }
  }

  if (selectPos == "2072") {
    //現状維持
    if (s2071 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2071 == "" && s1071 == "" && s1072 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2071 == strike) || (s2071 == "" && (s1072 != "" || s1071 == strike))) {
      ret = "2071";
    }
  }

  if (selectPos == "2081") {
    //現状維持
    if (s1082 != "" || s1081 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2081 == "" && s1081 == "" && s1082 == "") {
      ret = "";
    }
  }

  if (selectPos == "2082") {
    //現状維持
    if (s2081 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2081 == "" && s1081 == "" && s1082 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2081 == strike) || (s2081 == "" && (s1082 != "" || s1081 == strike))) {
      ret = "2081";
    }
  }

  if (selectPos == "2091") {
    //現状維持
    if (s1092 != "" || s1091 == strike) {
      ret = selectPos;
    }
    //動かさない
    if (s2091 == "" && s1091 == "" && s1092 == "") {
      ret = "";
    }
  }

  if (selectPos == "2092") {
    //現状維持
    if (s2091 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2091 == "" && s1091 == "" && s1092 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2091 == strike) || (s2091 == "" && (s1092 != "" || s1091 == strike))) {
      ret = "2091";
    }
  }

  if (selectPos == "2101") {
    //現状維持
    if (s1103 != "" || (s1101 != strike && s1102 != spare && s1102 != "")) {
      ret = selectPos;
    }
  }

  if (selectPos == "2102") {
    //現状維持
    if (s2101 != "") {
      ret = selectPos;
    }
    //動かさない
    if (s2101 == "" && s1102 == "") {
      ret = "";
    }
    //1投目に戻す
    if ((s2101 == "" && (s1103 != "" || (s1101 != strike && s1102 != spare && s1102 != "")))) {
      ret = "2101";
    }
  }

  if (selectPos == "2103") {
    //現状維持
    if ((s2101 == strike && s2102 != "") || s2102 == spare) {
      ret = selectPos;
    }
    //2投目に戻す
    if ((s2101 != "" && s2102 == "") || (s2101 != strike && s2102 != spare && s2101 != "")) {
      ret = "2102";
    }
    //1投目に戻す
    if ((s2101 == "" && (s1103 != "" || (s1101 != strike && s1102 != spare && s1102 != "")))) {
      ret = "2101";
    }
  }

  log("judgeGetPos: info :judgeGetPos return selectPos[$ret]");
  return ret;
}
