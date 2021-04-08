import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

PageRoute buildRoute({
  @required Widget page,
}) {
  if (Platform.isAndroid) {
    return MaterialPageRoute(
      builder: (context) {
        return page;
      },
    );
  }
  return CupertinoPageRoute(
    builder: (context) {
      return page;
    },
  );
}
