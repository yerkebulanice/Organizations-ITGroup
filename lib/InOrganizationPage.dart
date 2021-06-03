import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class InOrganizationPage extends StatefulWidget {
  const InOrganizationPage({Key? key}) : super(key: key);

  @override
  _InOrganizationPageState createState() => _InOrganizationPageState();
}

class _InOrganizationPageState extends State<InOrganizationPage> {
  Set<Marker> _createMarker() {
    return {
      Marker(
          markerId: MarkerId("marker_1"),
          position: _kMapCenter,
          infoWindow: InfoWindow(title: 'Marker 1'),
          rotation: 90),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(18.997962200185533, 72.8379758747611),
      ),
    };
  }

  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  late GoogleMapController _controller;

  Future<void> onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    _controller.setMapStyle(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Организация',
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xFFE98E34),
                Color(0xFFD3452F),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _kInitialPosition,
              onMapCreated: onMapCreated,
              zoomControlsEnabled: false,
              markers: _createMarker(),
            ),
            // Container(
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Icon(
            //       Icons.location_on_outlined,
            //       size: 60,
            //       color: Colors.green,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // Container(
      //   child: Text(
      //     'Magazine Aida',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 25,
      //     ),
      //   ),
      // ),
    );
  }
}
