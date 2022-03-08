import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nend_plugin/nend_plugin.dart';

//int spotId = 1053203;
//String apiKey = "725b2b5af4d2670c81e4d9551f746ae81497a3ad";

//テスト用広告ID
int spotId = 3174;
String apiKey = "c5cb8bc474345961c6e7a9778c947957ed8e1e4f";

//広告
class KoukokuNend extends StatefulWidget {
  const KoukokuNend({Key? key}) : super(key: key);

  @override
  _KoukokuNend createState() => _KoukokuNend();
}

class _KoukokuNend extends State<KoukokuNend> {
  late BannerAdController adController;

  @override
  Widget build(BuildContext context) {
    return BannerAd(
      bannerSize: BannerSize.type320x50,
      listener: _eventListener(),
      onCreated: (controller) {
        adController = controller;
        adController.load(spotId: spotId, apiKey: apiKey);
        adController.show();
      },
    );
  }

  BannerAdListener _eventListener() {
    return BannerAdListener(
      onLoaded: () => log('onLoaded'),
      onReceiveAd: () => log('onReceived'),
      onFailedToLoad: () => log('onFailedToLoad'),
      onAdClicked: () => log('onAdClicked'),
      onInformationClicked: () => log('onInformationClicked'),
    );
  }
}
