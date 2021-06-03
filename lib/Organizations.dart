// import 'package:flutter/material.dart';

// class OrganizationsPage extends StatefulWidget {
//   const OrganizationsPage({Key? key}) : super(key: key);

//   @override
//   _OrganizationsPageState createState() => _OrganizationsPageState();
// }

// class _OrganizationsPageState extends State<OrganizationsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Торговля',
//           style: TextStyle(color: Colors.white),
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               colors: <Color>[
//                 Color(0xFFE98E34),
//                 Color(0xFFD3452F),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: OldVersion(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
      // ListItem(),
      // SizedBoxBetweenItems(),
//     );
//   }
// }

// class SizedBoxBetweenItems extends StatelessWidget {
//   const SizedBoxBetweenItems({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[200],
//       child: SizedBox(
//         height: 4,
//       ),
//     );
//   }
// }

// class ListItem extends StatelessWidget {
//   const ListItem({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(10, 8, 10, 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Autopulse04',
//             style: TextStyle(
//               fontFamily: 'Kulture',
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class OldVersion extends StatelessWidget {
//   const OldVersion({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.only(top: 8),
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           // color: Colors.teal,
//           margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 180,
//                 padding: EdgeInsets.all(8),
//                 child: Image.network(
//                     'https://scontent-hel3-1.cdninstagram.com/v/t51.2885-19/s150x150/45556099_265834080745919_8383001280972324864_n.jpg?tp=1&_nc_ht=scontent-hel3-1.cdninstagram.com&_nc_ohc=8IvJHA0n9LgAX9uwhhx&edm=ABfd0MgBAAAA&ccb=7-4&oh=53ae6dbe72d4bb8617f0a90872af88c4&oe=60BE4981&_nc_sid=7bff83'),
//               ),
//               SizedBox(
//                 width: 6,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(4),
//                   margin: EdgeInsets.all(0),
//                   // color: Colors.teal,
//                   child: Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Autopulse04',
//                           style: TextStyle(
//                             fontFamily: 'Kulture',
//                             fontSize: 22,
//                             color: Colors.orange[900],
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   // width: 40,
//                             //   child: Icon(
//                             //     Icons.home_outlined,
//                             //     size: 25,
//                             //     color: Colors.orange[800],
//                             //   ),
//                             // ),
//                             Flexible(
//                               child: Text(
//                                 'Кулымбетова, 1 Алматы район, Актобе 1 этаж',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Kulture',
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Открыто с 9:00 до 18:00',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Kulture',
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star_border,
//                               color: Colors.orange[900],
//                               size: 25,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           // color: Colors.teal,
//           margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 180,
//                 padding: EdgeInsets.all(8),
//                 child: Image.network(
//                     'https://scontent-hel3-1.cdninstagram.com/v/t51.2885-19/s150x150/45556099_265834080745919_8383001280972324864_n.jpg?tp=1&_nc_ht=scontent-hel3-1.cdninstagram.com&_nc_ohc=8IvJHA0n9LgAX9uwhhx&edm=ABfd0MgBAAAA&ccb=7-4&oh=53ae6dbe72d4bb8617f0a90872af88c4&oe=60BE4981&_nc_sid=7bff83'),
//               ),
//               SizedBox(
//                 width: 6,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(4),
//                   margin: EdgeInsets.all(0),
//                   // color: Colors.teal,
//                   child: Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Autopulse04',
//                           style: TextStyle(
//                             fontFamily: 'Kulture',
//                             fontSize: 22,
//                             color: Colors.orange[900],
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   // width: 40,
//                             //   child: Icon(
//                             //     Icons.home_outlined,
//                             //     size: 25,
//                             //     color: Colors.orange[800],
//                             //   ),
//                             // ),
//                             Flexible(
//                               child: Text(
//                                 'Кулымбетова, 1 Алматы район, Актобе 1 этаж',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Kulture',
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Открыто с 9:00 до 18:00',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Kulture',
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star_border,
//                               color: Colors.orange[900],
//                               size: 25,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           // color: Colors.teal,
//           margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 180,
//                   padding: EdgeInsets.all(8),
//                   child: Image(
//                     image: AssetImage('lib/images/default.jpeg'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 6,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(4),
//                   margin: EdgeInsets.all(0),
//                   // color: Colors.teal,
//                   child: Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Autopulse04',
//                           style: TextStyle(
//                             fontFamily: 'Kulture',
//                             fontSize: 22,
//                             color: Colors.orange[900],
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   // width: 40,
//                             //   child: Icon(
//                             //     Icons.home_outlined,
//                             //     size: 25,
//                             //     color: Colors.orange[800],
//                             //   ),
//                             // ),
//                             Flexible(
//                               child: Text(
//                                 'Кулымбетова, 1 Алматы район, Актобе 1 этаж',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Kulture',
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Открыто с 9:00 до 18:00',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Kulture',
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star_border,
//                               color: Colors.orange[900],
//                               size: 25,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           // color: Colors.teal,
//           margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 180,
//                 padding: EdgeInsets.all(8),
//                 child: Image.network(
//                     'https://scontent-hel3-1.cdninstagram.com/v/t51.2885-19/s150x150/45556099_265834080745919_8383001280972324864_n.jpg?tp=1&_nc_ht=scontent-hel3-1.cdninstagram.com&_nc_ohc=8IvJHA0n9LgAX9uwhhx&edm=ABfd0MgBAAAA&ccb=7-4&oh=53ae6dbe72d4bb8617f0a90872af88c4&oe=60BE4981&_nc_sid=7bff83'),
//               ),
//               SizedBox(
//                 width: 6,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(4),
//                   margin: EdgeInsets.all(0),
//                   // color: Colors.teal,
//                   child: Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Autopulse04',
//                           style: TextStyle(
//                             fontFamily: 'Kulture',
//                             fontSize: 22,
//                             color: Colors.orange[900],
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   // width: 40,
//                             //   child: Icon(
//                             //     Icons.home_outlined,
//                             //     size: 25,
//                             //     color: Colors.orange[800],
//                             //   ),
//                             // ),
//                             Flexible(
//                               child: Text(
//                                 'Кулымбетова, 1 Алматы район, Актобе 1 этаж',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Kulture',
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Открыто с 9:00 до 18:00',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Kulture',
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star_border,
//                               color: Colors.orange[900],
//                               size: 25,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           // color: Colors.teal,
//           margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 180,
//                   padding: EdgeInsets.all(8),
//                   child: Image(
//                     image: AssetImage('lib/images/default.jpeg'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 6,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(4),
//                   margin: EdgeInsets.all(0),
//                   // color: Colors.teal,
//                   child: Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Autopulse04',
//                           style: TextStyle(
//                             fontFamily: 'Kulture',
//                             fontSize: 22,
//                             color: Colors.orange[900],
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   // width: 40,
//                             //   child: Icon(
//                             //     Icons.home_outlined,
//                             //     size: 25,
//                             //     color: Colors.orange[800],
//                             //   ),
//                             // ),
//                             Flexible(
//                               child: Text(
//                                 'Кулымбетова, 1 Алматы район, Актобе 1 этаж',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Kulture',
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Открыто с 9:00 до 18:00',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Kulture',
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orange[900],
//                               size: 25,
//                             ),
//                             Icon(
//                               Icons.star_border,
//                               color: Colors.orange[900],
//                               size: 25,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
