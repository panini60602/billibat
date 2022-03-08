import 'dart:developer';

import 'package:billibat/bowlard_buhin.dart';

//文字⇒数字への型変換。空白の場合は0を返す。
int intChange(String num) {
  log("judgeGetPos: info :intChange Called num[$num]");
  int ret = 0;
  if (num == "") {
    num = "0";
  }

  //スペア、ストライクの場合は10を返す
  if (num == spare || num == strike) {
    num = "10";
  }

  ret = int.parse(num);
  return ret;
}
