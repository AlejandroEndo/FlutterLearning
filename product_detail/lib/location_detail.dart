import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, location),
      ),
    );
  } // build

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.imgUrl, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 10), child: Text(text));
  }
}