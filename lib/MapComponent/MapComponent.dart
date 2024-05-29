// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class MyMapComponent extends StatelessWidget {
  final MapController _mapController = MapController();

  List<Marker> allMarkers = [
    Marker(
        width: 80.w,
        height: 80.h,
        point: LatLng(35.9022, 10.5686),
        child: Icon(
          Icons.location_on,
          color: Color(0xFFFF7622),
          size: 45.w,
        )),
  ];

  final List<Polyline> lstPolygone = [
    Polyline(
      points: [
        LatLng(33.8869, 9.5375),
      ],
      color: Color(0xFFFF7622),
      strokeWidth: 3.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        initialCenter: LatLng(33.8869, 9.5375),
        zoom: 5.0,
        minZoom: 1.0,
        maxZoom: 18.0,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        ),
        PolylineLayer(
          polylines: lstPolygone,
        ),
        MarkerLayer(markers: allMarkers.take(allMarkers.length).toList()),
      ],
    ));
  }
}
