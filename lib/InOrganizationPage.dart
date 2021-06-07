import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class InOrganizationPage extends StatefulWidget {
  const InOrganizationPage({Key? key}) : super(key: key);

  @override
  _InOrganizationPageState createState() => _InOrganizationPageState();
}

class _InOrganizationPageState extends State<InOrganizationPage>
    with SingleTickerProviderStateMixin {
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

  double height = 0;

  late TabController tabController;
  @override
  void initState() {
    tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      onTap: (index) {
        if (index == 1) {
          setState(() {
            height = 493;
          });
        } else if (index == 2) {
          setState(() {
            height = 300;
          });
        }
      },
      // unselectedLabelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelColor: Colors.orange[900],
      unselectedLabelStyle: TextStyle(
        fontSize: 20.0,
      ),
      labelStyle: TextStyle(
        fontSize: 20.0,
      ),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3.0,
          color: Colors.orange.shade900,
        ),
        insets: EdgeInsets.symmetric(horizontal: 20.0),
      ),
      tabs: <Widget>[
        Tab(
          text: 'Инфо',
        ),
        Tab(
          text: 'Отзывы',
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

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
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: _getTabBar(),
                ),
                Container(
                  width: screenWidth,
                  height: height,
                  // height: screenHeight,
                  // color: Colors.teal,
                  child: _getTabBarView(
                    <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(18, 12, 18, 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ихсанова 48',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Уральск',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                            Text(
                              'Ежедневно с 9:00 - 20:00',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      '+7-777-977-36-36',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.call,
                                    color: Colors.grey[600],
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Компания в социальных сетях',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.blue,
                                          child: Image(
                                            image: AssetImage(
                                              'lib/images/instagram.png',
                                            ),
                                            width: 28,
                                            height: 28,
                                          ),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.grey[350],
                                          child: Image(
                                            image: AssetImage(
                                              'lib/images/facebook.png',
                                            ),
                                            width: 28,
                                            height: 28,
                                          ),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.grey[350],
                                          child: Image(
                                            image: AssetImage(
                                              'lib/images/vk.png',
                                            ),
                                            width: 28,
                                            height: 28,
                                          ),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.grey[350],
                                          child: Image(
                                            image: AssetImage(
                                              'lib/images/whatsapp.png',
                                            ),
                                            width: 28,
                                            height: 28,
                                          ),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 45,
                                      width: 130,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 2,
                                        child: Center(
                                          child: Text(
                                            'Торговля',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 0.6,
                                  color: Colors.black,
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                                  child: Center(
                                    child: Text(
                                      'Добавить организацию',
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.settings),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
