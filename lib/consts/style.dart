import 'package:devsteam_test/consts/colors.dart';
import 'package:flutter/cupertino.dart';

final mainTextStyle = TextStyle(
  fontSize: 24,
  color: textColor,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(5.0, 5.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
  ],
);