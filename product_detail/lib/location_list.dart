import 'package:flutter/material.dart';
import 'package:product_detail/location_detail.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;

  LocationList(this._locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations', style: Styles.navBarTitle),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: this._locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  void _navigateToLocationDetail(BuildContext context, Location location) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationDetail(location),
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = this._locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigateToLocationDetail(context, location),
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
        constraints: BoxConstraints.tightFor(width: 100.0),
        child: Image.network(location.imgUrl, fit: BoxFit.fitWidth));
  }

  Widget _itemTitle(Location location) {
    return Text(location.name, style: Styles.textDefault);
  }
}
