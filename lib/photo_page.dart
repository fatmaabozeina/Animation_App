import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyPhotoPage extends StatefulWidget {
  static const String id = 'PhotoPage';

  @override
  _MyPhotoPageState createState() => _MyPhotoPageState();
}

class _MyPhotoPageState extends State<MyPhotoPage> {
  AlignmentDirectional alignmentValue = AlignmentDirectional.bottomStart;
  AlignmentDirectional textAlignment = AlignmentDirectional.bottomStart;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((_) {
      setState(() {
        alignmentValue = AlignmentDirectional.lerp(
            AlignmentDirectional.bottomStart,
            AlignmentDirectional.bottomEnd,
            3);
        textAlignment = AlignmentDirectional.lerp(
            AlignmentDirectional.bottomStart,
            AlignmentDirectional.bottomEnd,
            .5);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EEBC),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: TypewriterAnimatedTextKit(
                  text: ['Your speed doesn\'t matter, Forward is forward'],
                  textStyle: TextStyle(
                      color: Color(0xFFD77328),
                      fontSize: 50.0,
                      fontFamily: 'AkayaTelivigala',
                      letterSpacing: 1),
                  textAlign: TextAlign.center,
//                    alignment: AlignmentDirectional.center
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(seconds: 10),
                  alignment: textAlignment,
                  margin: EdgeInsets.only(top: 100, left: 0),
                  child: FadeAnimatedTextKit(
                    text: ['Good', 'Good luck!'],
                    textStyle: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'AkayaTelivigala',
                        color: Color(0xFFD77328)),
                  ),
                ),
                AnimatedAlign(
                  duration: Duration(seconds: 20),
                  alignment: alignmentValue,
//                  curve: Curves.decelerate,
                  child: Image(
                    image: AssetImage('images/turtle2.jpeg'),
                    height: 250,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
