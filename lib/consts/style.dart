import 'package:devsteam_test/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final mainTextStyle = TextStyle(
  fontSize: 24,
  color: textColor,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(1,1),
      blurRadius: 5,
      color: Colors.black.withOpacity(0.8),
    ),
  ],
);