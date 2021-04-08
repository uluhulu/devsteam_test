import 'package:devsteam_test/screens/photos_list_screen/widget/photos_list.dart';
import 'package:flutter/material.dart';

class PhotosListScreen extends StatefulWidget {
  @override
  _PhotosListScreenState createState() => _PhotosListScreenState();
}

class _PhotosListScreenState extends State<PhotosListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotosList(),
    );
  }
}
