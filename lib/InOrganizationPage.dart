import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class InOrganizationPage extends StatefulWidget {
  const InOrganizationPage({Key? key}) : super(key: key);

  @override
  _InOrganizationPageState createState() => _InOrganizationPageState();
}

class _InOrganizationPageState extends State<InOrganizationPage> {
  late GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(50.2737601, 57.1875423),
    zoom: 16,
  );
  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("Marker_1"),
        infoWindow: InfoWindow(
          title: 'Департамент',
          snippet: 'Yes',
        ),
        position: LatLng(50.2737601, 57.1875423),
      ),
    };
  }

  // static final LatLng _kMapCenter = LatLng(50.2766838, 57.2120402);

  // static final CameraPosition _kInitialPosition =
  //     CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  // late GoogleMapController _controller;

  // Future<void> onMapCreated(GoogleMapController controller) async {
  //   _controller = controller;
  //   String value = await DefaultAssetBundle.of(context)
  //       .loadString('lib/assets/map_style.json');
  //   _controller.setMapStyle(value);
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

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
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            width: screenWidth,
            height: 200,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                    markers: _createMarker(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth,
            height: 130,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.orange[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.orange[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.orange[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.orange[900],
                          ),
                          Icon(
                            Icons.star_border,
                            size: 30,
                            color: Colors.orange[900],
                          ),
                        ],
                      ),
                      Text(
                        'Департамент',
                        style: TextStyle(
                          fontFamily: 'Kulture',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Государство, общество',
                        style: TextStyle(
                          fontFamily: 'Kulture',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 14, 14, 14),
                  child: Image(
                    image: AssetImage('lib/images/default.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth,
            height: 100,
            color: Colors.grey[350],
            child: Center(
              child: TabBar(
                indicatorColor: Colors.white,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 4,
                    color: Colors.white,
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'Актуальные',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Прошедшие',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
