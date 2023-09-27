import 'dart:ui';

import 'package:flutter/material.dart';

const mainGreen = Color(0xff199859);
var mainGrey = Colors.grey.shade200;

Container marks(Size size, String path) {
  return Container(
    width: size.width / 5,
    height: size.height / 10,
    decoration: BoxDecoration(
      color: mainGrey,
      shape: BoxShape.circle,

    ),
    child: Center(
      child: Container(
        width: size.width/7.3,
        height: size.width/7.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(path),
          ),
        ),
      ),
    ),
  );
}