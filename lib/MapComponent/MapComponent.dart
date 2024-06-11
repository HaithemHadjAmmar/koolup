// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class MyMapComponent extends StatefulWidget {
  @override
  _MyMapComponentState createState() => _MyMapComponentState();
}

class _MyMapComponentState extends State<MyMapComponent> {
  final MapController _mapController = MapController();
  List<Marker> allMarkers = [];

  final List<Polyline> lstPolygone = [
    Polyline(
      points: [
        LatLng(33.8869, 9.5375),
      ],
      color: Color(0xFFFF7622),
      strokeWidth: 3.0,
    ),
  ];

  void _handleTap(TapPosition tapPosition, LatLng latlng) {
    setState(() {
      allMarkers = [
        Marker(
          width: 80.w,
          height: 80.h,
          point: latlng,
          child: Icon(
            Icons.location_on,
            color: Color(0xFFFF7622),
            size: 45.w,
          ),
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          initialCenter: LatLng(33.8869, 9.5375),
          zoom: 5.0,
          minZoom: 1.0,
          maxZoom: 18.0,
          onTap: _handleTap,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          PolylineLayer(
            polylines: lstPolygone,
          ),
          MarkerLayer(
            markers: allMarkers,
          ),
        ],
      ),
    );
  }
}
