import 'package:flutter/material.dart';

import 'header.dart';

class Bowlard extends StatelessWidget {
  const Bowlard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBowlard(),
      body: Container(
        height: double.infinity,
        color: Colors.white,
      ),
    );
  }
}