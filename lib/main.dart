import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
 Widget build(BuildContext context) {
  return Directionality(
     textDirection: TextDirection.ltr,
    child: FlutterMap(
      options: MapOptions(
        center: LatLng(2.925928,101.651924),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c']
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(2.925928,101.651924),
              builder: (ctx) =>
              Container(
                child: Icon(Icons.location_on),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

}