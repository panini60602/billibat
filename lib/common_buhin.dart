import 'dart:developer';

//文字⇒数字への型変換。空白の場合は0を返す。
int intChange(String num) {
  log("judgeGetPos: info :intChange Called num[$num]");
  int ret = 0;
  if (num == "") {
    num = "0";
  }
  ret = int.parse(num);
  return ret;
}
