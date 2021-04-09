import 'package:devsteam_test/di.dart';
import 'package:devsteam_test/screens/photos_list_screen/photos_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  initDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotosListScreen(),
    );
  }
}
