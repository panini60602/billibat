import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
//      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/ico.png'),
          //      Image(image:AssetImage('images/ico.png'),fit:BoxFit.cover),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text('ビリバト！', style: TextStyle(fontSize: 24)),
          )
        ],
      ),
      backgroundColor: Colors.brown,
    );
  }
}

class HeaderBowlard extends StatelessWidget with PreferredSizeWidget {
  const HeaderBowlard({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: const Text('ボーラード（バトル）'),
      backgroundColor: Colors.brown,
    );
  }
}

class HeaderBowlardSolo extends StatelessWidget with PreferredSizeWidget {
  const HeaderBowlardSolo({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: const Text('ボーラード（１人用）'),
      backgroundColor: Colors.brown,
    );
  }
}

class HeaderCutOff extends StatelessWidget with PreferredSizeWidget {
  const HeaderCutOff({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: const Text('cutoff'),
      backgroundColor: Colors.brown,
    );
  }
}
