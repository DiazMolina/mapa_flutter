import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("bomberos"),
      ),
      body: new FlutterMap(
        options: new MapOptions(
            center: new LatLng(-12.257296, -76.878358), minZoom: 10.0),
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          new MarkerLayerOptions(markers: [
            new Marker(

                width: 45.0,
                height: 45.0,

              point: new LatLng(-12.257296, -76.878358),

                builder: (context) => new Container(

                      child: IconButton(
                          icon: Icon(Icons.location_on),
                          color: Colors.red,
                          iconSize: 45.0,
                          onPressed: (){}),

                    ),

            ),
            new Marker(
              width: 45.0,
              height: 45.0,

              point: new LatLng(-12.256038, -76.882585),

              builder: (context) => new Container(

                child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Colors.red,
                    iconSize: 45.0,
                    onPressed: (){}),

              ),

            ),

          ])
        ],
      ),
    );
  }
}

