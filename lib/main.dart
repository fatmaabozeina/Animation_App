import 'package:flutter/material.dart';
import 'package:flutterappanimation/home_page.dart';
import 'package:flutterappanimation/photo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.white, backgroundColor: Colors.white),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        MyPhotoPage.id: (context) => MyPhotoPage()
      },
    );
  }
}
