import 'package:flutter/material.dart';

class CardBackgrounds {
  CardBackgrounds._();

  static Widget black = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Color(0xff0B0B0F),
  );

  static Widget green = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color:  Color(int.parse('#b9bea8'.substring(1, 7), radix: 16) + 0xFF000000),
  );

  static Widget white = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Color(0xffF9F9FA),
  );
}
