import 'dart:html';

import 'package:flutter/material.dart';

import '../../constants.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color:kPrincipalColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Create by Capivara Tech.', style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}