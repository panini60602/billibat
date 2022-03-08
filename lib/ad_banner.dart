/*
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nend_plugin/nend_plugin.dart';


class AdBanner extends StatelessWidget {
  final BannerAdController adController;

  final AdSize size;

  const AdBanner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final banner = BannerAd(
        bannerSize: BannerSize.type320x50,
        listener: _eventListener(),
        onCreated: (controller) {
          adController = controller;
          adController.load(spotId: spotId, apiKey: apiKey);
        },
    ),
//    return SizedBox(width: banner.size.width.toDouble(), height: banner.size.height.toDouble(), child: AdWidget(ad: banner));
  }

  BannerAdListener _eventListener() {
    return BannerAdListener(
      onLoaded: () => print('onLoaded'),
      onReceiveAd: () => print('onReceived'),
      onFailedToLoad: () => print('onFailedToLoad'),
      onAdClicked: () => print('onAdClicked'),
      onInformationClicked: () => print('onInformationClicked'),
    );
  }

  // 広告ID
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      //商用
//      return "ca-app-pub-3721954212330296/2360666383";
      //テスト用
      return "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "xxxx-xxxx";
    } else {
      //どちらでもない場合は、テスト用を返す
      return BannerAd.testAdUnitId;
    }
  }
}


 */
