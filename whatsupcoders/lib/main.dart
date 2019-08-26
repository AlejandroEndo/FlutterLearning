import 'package:flutter/material.dart';
import 'package:whatsupcoders/strings.dart';

void main() => runApp(MyApp());

Widget titleSection = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          Strings.appHeadingTitle,
          style: TextStyle(
            color: new Color(0xff622F74),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          Strings.appSubHeadingTitle,
          style: TextStyle(
            color: new Color(0xff622F74),
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
    ],
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column buildButton(IconData icon, String label) {
      Color color = new Color(0xff622F74);
      return Column(
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            child: Text(
              label,
              style: TextStyle(color: color, fontSize: 20.0),
            ),
          ),
        ],
      );
    }

    Widget buttonDisplay = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButton(Icons.phone, Strings.appButtonCall),
          buildButton(Icons.airplanemode_active, Strings.appButtonAirplane),
          buildButton(Icons.chat_bubble, Strings.appButtonChat),
          buildButton(Icons.library_music, Strings.appButtonMusic),
        ],
      ),
    );

    return MaterialApp(
      title: Strings.appBarTittle,
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTittle),
        ),
        body: ListView(
          children: <Widget>[
            titleSection,
            buttonDisplay,
          ],
        ),
      ),
    );
  }
}
