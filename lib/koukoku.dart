import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_banner.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
}

class Koukoku extends StatelessWidget {
  const Koukoku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdBanner(size: AdSize.banner);
  }
}
