import 'package:flutter/material.dart';

class AppBarApp extends AppBar {
  AppBarApp(
      {Key? key,
      double topPadding = 52.0,
      String title = '',
      required Function() arrowBack})
      : super(
            key: key,
            toolbarHeight: topPadding,
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            elevation: 0.0,
            leading: IconButton(
              onPressed: arrowBack,
              icon: const Icon(Icons.arrow_back_ios),
            ));
}
