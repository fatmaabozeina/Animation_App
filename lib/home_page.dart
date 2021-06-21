import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutterappanimation/photo_page.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'HomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: Duration(seconds: 1), vsync: this, upperBound: 300);
    controller.forward();

    controller.addListener(() {
      setState(() {
        print(controller.value);
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedContainer(
                margin: EdgeInsets.only(top: 100),
                width: controller.value,
                duration: Duration(seconds: 2),
                child: RaisedButton(
                  color: Colors.black,
                  child: Image(
                    image: AssetImage('images/button1.jpeg'),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyPhotoPage.id);
                  },
                ),
              ),
            ),
            Container(
              height: 200,
              child: ScaleAnimatedTextKit(
                  text: ['Turn', ' On'],
                  textStyle: TextStyle(
                      fontFamily: 'AkayaTelivigala',
                      color: Color(0xFF58B8FC),
                      fontSize: 60,
                      letterSpacing: 2),
                  alignment: AlignmentDirectional.topCenter),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
