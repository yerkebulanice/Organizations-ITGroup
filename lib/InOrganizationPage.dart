import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class InOrganizationPage extends StatefulWidget {
  const InOrganizationPage({Key? key}) : super(key: key);

  @override
  _InOrganizationPageState createState() => _InOrganizationPageState();
}

class _InOrganizationPageState extends State<InOrganizationPage> {
  Completer<GoogleMapController> _controller = Completer();
  // static const LatLng _center = const LatLng(51.2190231, 51.3894742);

  CameraPosition organizationPosition =
      CameraPosition(target: LatLng(51.2454558, 51.4245345), zoom: 16);
  CameraPosition myPosition =
      CameraPosition(target: LatLng(51.2130476, 51.3740634), zoom: 19);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Каталог организаций',
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
      body: ListView(
        children: [
          Container(
            // height: double.infinity,
            child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: organizationPosition,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Magazine Aida',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
