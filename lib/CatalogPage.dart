import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'InOrganizationPage.dart';
// import 'Organizations.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
        padding: EdgeInsets.all(0),
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(0),
              height: 200,
              child: Stack(
                children: [
                  Image.network(
                    'https://liter.kz/wp-content/uploads/2020/06/crop_1407673427-aktobe1_1551691000-750x352.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    left: 40,
                    right: 40,
                    bottom: 0,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                          ),
                          // padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          // color: Colors.black,
                          // height: 40,
                          child: TextField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              // contentPadding: const EdgeInsets.symmetric(
                              //   vertical: 4.0,
                              // ),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(38, 1, 20, 1),
                              hintText: 'Поиск',
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide: BorderSide(
                                  color: Color(0xFFE98E34),
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 6,
                          child: Icon(
                            Icons.search,
                            color: Colors.orange[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Категории организаций',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kulture',
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Смотреть все',
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Kulture',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  Container(
                    height: 140,
                    padding: EdgeInsets.only(top: 10),
                    // color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InOrganizationPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Container(
                                    // color: Color(0xFFFAEFF0),
                                    width: 80,
                                    height: 80,
                                    child: Icon(
                                      Icons.location_city,
                                      size: 45,
                                      color: Colors.orange[900],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Color(0xFFFAEFF0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Государство, общество',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Color(0xFFFAEFF0),
                                    width: 80,
                                    height: 80,
                                    child: Icon(
                                      Icons.pedal_bike,
                                      size: 45,
                                      color: Colors.orange[900],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Color(0xFFFAEFF0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Досуг',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Color(0xFFFAEFF0),
                                    width: 80,
                                    height: 80,
                                    child: Icon(
                                      Icons.local_hospital_outlined,
                                      size: 45,
                                      color: Colors.orange[900],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Color(0xFFFAEFF0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Медицина',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Color(0xFFFAEFF0),
                                    width: 80,
                                    height: 80,
                                    child: Icon(
                                      Icons.psychology_outlined,
                                      size: 45,
                                      color: Colors.orange[900],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Color(0xFFFAEFF0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Наука и образование',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Color(0xFFFAEFF0),
                                    width: 80,
                                    height: 80,
                                    child: Icon(
                                      Icons.sports_outlined,
                                      size: 45,
                                      color: Colors.orange[900],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Color(0xFFFAEFF0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Оборудование, инструменты',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black38,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 14,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Отзывы',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kulture',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 14, top: 10, bottom: 10, right: 14),
                    // color: Colors.teal,
                    // height: 165,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // color: Color(0xFFFAEFF0),
                                width: 60,
                                height: 60,
                                child: Image(
                                  image: AssetImage(
                                    'lib/images/avatar.png',
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Color(0xFFFAEFF0),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Лунара Ермекова',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Kulture',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(0),
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Интерьер красивый, уютно',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      fontFamily: 'Kulture',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '3 минуты назад',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.orange[900],
                                        size: 26,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.corporate_fare_outlined,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Организация',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Kulture',
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              'Зам Зам, кафе',
                                              style: TextStyle(
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Kulture',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Узбекский плов огонь. Прямо очень вкусно. Только вот Деревянные столы aбыли в крошках, это было неприятно.',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 14, top: 10, bottom: 10, right: 14),
                    // color: Colors.teal,
                    // height: 165,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // color: Color(0xFFFAEFF0),
                                width: 60,
                                height: 60,
                                child: Image(
                                  image: AssetImage(
                                    'lib/images/avatar.png',
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Color(0xFFFAEFF0),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Лунара Ермекова',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Kulture',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(0),
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Интерьер красивый, уютно',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      fontFamily: 'Kulture',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '3 минуты назад',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.orange[900],
                                        size: 26,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.corporate_fare_outlined,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Организация',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Kulture',
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              'Зам Зам, кафе',
                                              style: TextStyle(
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Kulture',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Узбекский плов огонь. Прямо очень вкусно. Только вот Деревянные столы aбыли в крошках, это было неприятно. Узбекский плов огонь. Прямо очень вкусно. Только вот Деревянные столы aбыли в крошках, это было неприятно. Узбекский плов огонь. Прямо очень вкусно. Только вот Деревянные столы aбыли в крошках, это было неприятно. ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 14, top: 10, bottom: 10, right: 14),
                    // color: Colors.teal,
                    // height: 165,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // color: Color(0xFFFAEFF0),
                                width: 60,
                                height: 60,
                                child: Image(
                                  image: AssetImage(
                                    'lib/images/avatar.png',
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Color(0xFFFAEFF0),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Лунара Ермекова',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Kulture',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(0),
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Интерьер красивый, уютно',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      fontFamily: 'Kulture',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '3 минуты назад',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.orange[900],
                                        size: 26,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.corporate_fare_outlined,
                                        color: Colors.orange[900],
                                        size: 26,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Организация',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Kulture',
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              'Зам Зам, кафе',
                                              style: TextStyle(
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Kulture',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Узбекский плов огонь. Прямо очень вкусно. Только вот Деревянные столы aбыли в крошках, это было неприятно.',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Kulture',
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
