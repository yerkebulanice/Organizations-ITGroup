import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

final String fontFamilyy = 'Kulture';

class InOrganizationPage extends StatefulWidget {
  const InOrganizationPage({Key? key}) : super(key: key);

  @override
  _InOrganizationPageState createState() => _InOrganizationPageState();
}

class _InOrganizationPageState extends State<InOrganizationPage>
    with SingleTickerProviderStateMixin {
  //Google map
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
        if (index == 0) {
          setState(() {
            height = 493;
          });
        } else if (index == 1) {
          setState(() {
            height = 550;
          });
        }
      },
      unselectedLabelColor: Colors.black,
      labelColor: Colors.orange[900],
      unselectedLabelStyle: TextStyle(
        fontSize: 18.0,
        fontFamily: fontFamilyy,
      ),
      labelStyle: TextStyle(
        fontSize: 18.0,
        fontFamily: fontFamilyy,
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
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Организация',
          style: TextStyle(
            color: Colors.white,
            fontFamily: fontFamilyy,
          ),
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
            //Google map
            width: screenWidth,
            height: 210,
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
          FocusNameOfOrg(screenWidth: screenWidth),
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
                  height: screenHeight,
                  child: _getTabBarView(
                    <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddressOfOrganization(),
                            DividerBetween(),
                            TimeWorking(),
                            DividerBetween(),
                            CallButton(),
                            DividerBetween(),
                            ShareOnSocialMedia(),
                            DividerBetween(),
                            TypeOfOrganization(),
                            DividerBetween(),
                            AddOrganizationButton(),
                          ],
                        ),
                      ), // 1 page of tab bar
                      Otzivi(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Otzivi extends StatelessWidget {
  const Otzivi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopOtziv(),
          DividerBetween(),
          NapishiOtziv(),
          DividerBetween(),
          CommentWidget(
            comment:
                'Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание!',
          ),
          DividerBetween(),
          CommentWidget(
            comment: 'Очень понравилось обслуживание!',
          ),
          Divider(),
          CommentWidget(
            comment:
                'Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание! Очень понравилось обслуживание!',
          )
        ],
      ),
    );
  }
}

class TopOtziv extends StatelessWidget {
  const TopOtziv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      margin: EdgeInsets.fromLTRB(18, 12, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.orange[900],
                    size: 42,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.orange[900],
                    size: 42,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.orange[900],
                    size: 42,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.orange[900],
                    size: 42,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.orange[900],
                    size: 42,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Были здесь? Напишите отзыв',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: fontFamilyy,
            ),
          ),
        ],
      ),
    );
  }
}

class NapishiOtziv extends StatelessWidget {
  const NapishiOtziv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '5.0',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: fontFamilyy,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange[900],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange[900],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange[900],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange[900],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange[900],
                  ),
                ],
              ),
            ],
          ),
          Text(
            '1 отзыв',
            style: TextStyle(
              fontSize: 14,
              fontFamily: fontFamilyy,
            ),
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String comment;

  CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14, 8, 14, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // crossAxisAlignment:
            //     CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('lib/images/avatar.png'),
                width: 50,
                fit: BoxFit.fill,
                height: 50,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Майра Мангитаева',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontFamily: fontFamilyy,
                    ),
                  ),
                  Text(
                    '4 отзыва',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: fontFamilyy,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              comment,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: fontFamilyy,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '20 августа 2020',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('0'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FocusNameOfOrg extends StatelessWidget {
  const FocusNameOfOrg({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: 130,
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
                    LargeIconStar(),
                    LargeIconStar(),
                    LargeIconStar(),
                    LargeIconStar(),
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
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Государство, общество',
                  style: TextStyle(
                    fontFamily: 'Kulture',
                    fontSize: 14,
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
    );
  }
}

class AddressOfOrganization extends StatelessWidget {
  const AddressOfOrganization({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 12, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ихсанова 48',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontFamily: fontFamilyy,
            ),
          ),
          Text(
            'Уральск',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: fontFamilyy,
            ),
          ),
        ],
      ),
    );
  }
}

class TimeWorking extends StatelessWidget {
  const TimeWorking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Text(
        'Ежедневно с 9:00 - 20:00',
        style: TextStyle(
          fontSize: 18,
          fontFamily: fontFamilyy,
          color: Colors.black,
        ),
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  const CallButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                '+7-777-977-36-36',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: fontFamilyy,
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
    );
  }
}

class ShareOnSocialMedia extends StatelessWidget {
  const ShareOnSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Компания в социальных сетях',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: fontFamilyy,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(0),
            child: Row(
              children: [
                SocialMedia(socialMediaName: "instagram", color: Colors.blue),
                SocialMedia(
                    socialMediaName: "facebook", color: Colors.grey.shade400),
                SocialMedia(socialMediaName: "vk", color: Colors.grey.shade400),
                SocialMedia(
                    socialMediaName: "whatsapp", color: Colors.grey.shade400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  final String socialMediaName;
  final Color color;
  SocialMedia({required this.socialMediaName, required this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: color,
      child: Image(
        image: AssetImage(
          'lib/images/$socialMediaName.png',
        ),
        width: 28,
        height: 28,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}

class TypeOfOrganization extends StatelessWidget {
  const TypeOfOrganization({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: 130,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                elevation: 2,
                child: Center(
                  child: Text(
                    'Торговля',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: fontFamilyy,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddOrganizationButton extends StatelessWidget {
  const AddOrganizationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
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
                fontSize: 18,
                fontFamily: fontFamilyy,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DividerBetween extends StatelessWidget {
  const DividerBetween({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey[700],
      height: 30,
    );
  }
}

class LargeIconStar extends StatelessWidget {
  const LargeIconStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 30,
      color: Colors.orange[900],
    );
  }
}

// Container(
//                       // padding: EdgeInsets.fromLTRB(18, 12, 18, 12),
//                       // color: Colors.teal,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
//                             margin: EdgeInsets.fromLTRB(18, 12, 18, 12),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Icon(
//                                           Icons.star_outline,
//                                           color: Colors.orange[900],
//                                           size: 42,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Icon(
//                                           Icons.star_outline,
//                                           color: Colors.orange[900],
//                                           size: 42,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Icon(
//                                           Icons.star_outline,
//                                           color: Colors.orange[900],
//                                           size: 42,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Icon(
//                                           Icons.star_outline,
//                                           color: Colors.orange[900],
//                                           size: 42,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Icon(
//                                           Icons.star_outline,
//                                           color: Colors.orange[900],
//                                           size: 42,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Text(
//                                   'Были здесь? Напишите отзыв',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Divider(
//                             color: Colors.grey[700],
//                             height: 30,
//                           ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       '5.0',
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Row(
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           size: 20,
//                                           color: Colors.orange[900],
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 20,
//                                           color: Colors.orange[900],
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 20,
//                                           color: Colors.orange[900],
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 20,
//                                           color: Colors.orange[900],
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 20,
//                                           color: Colors.orange[900],
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   '1 отзыв',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Divider(
//                             color: Colors.grey[700],
//                             height: 30,
//                           ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Image(
//                                       image:
//                                           AssetImage('lib/images/avatar.png'),
//                                       width: 50,
//                                       fit: BoxFit.fill,
//                                       height: 50,
//                                     ),
//                                     SizedBox(
//                                       width: 15,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Майра Мангитаева',
//                                           style: TextStyle(
//                                             color: Colors.blue,
//                                             fontSize: 18,
//                                           ),
//                                         ),
//                                         Text(
//                                           '4 отзыва',
//                                           style: TextStyle(
//                                             color: Colors.grey,
//                                             fontSize: 14,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Container(
//                                   child: Text(
//                                     'Очень понравилось обслуживание!',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 4,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       '20 августа 2020',
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     InkWell(
//                                       child: Row(
//                                         children: [
//                                           Icon(
//                                             Icons.thumb_up_alt_outlined,
//                                             size: 18,
//                                           ),
//                                           SizedBox(
//                                             width: 4,
//                                           ),
//                                           Text('0'),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Divider(
//                             color: Colors.grey[700],
//                             height: 30,
//                           ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Image(
//                                       image:
//                                           AssetImage('lib/images/avatar.png'),
//                                       width: 50,
//                                       fit: BoxFit.fill,
//                                       height: 50,
//                                     ),
//                                     SizedBox(
//                                       width: 15,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Майра Мангитаева',
//                                           style: TextStyle(
//                                             color: Colors.blue,
//                                             fontSize: 18,
//                                           ),
//                                         ),
//                                         Text(
//                                           '4 отзыва',
//                                           style: TextStyle(
//                                             color: Colors.grey,
//                                             fontSize: 14,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Container(
//                                   child: Text(
//                                     'Очень понравилось обслуживание! Очень понравилось обслуживание!Очень понравилось обслуживание! Очень понравилось обслуживание! ',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 4,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       '20 августа 2020',
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     InkWell(
//                                       child: Row(
//                                         children: [
//                                           Icon(
//                                             Icons.thumb_up_alt_outlined,
//                                             size: 18,
//                                           ),
//                                           SizedBox(
//                                             width: 4,
//                                           ),
//                                           Text('0'),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Divider(
//                             color: Colors.grey[700],
//                             height: 30,
//                           ),
//                         ],
//                       ),
//                     ),
