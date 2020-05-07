import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'Indonesia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.fromLTRB(20, 20, 30, 20),
                  child: Text(
                    "COVID-19 PANDEMI",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
              Container(
                width: 365,
                height: 149,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffFF8C25).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFF8C25)),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.fromLTRB(30, 20, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Statistic Overview",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Statistik virus corona",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Image(
                                  image: AssetImage('images/signs 1.png'))),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: Icon(Icons.expand_more),
                                items: <String>[
                                  'Indonesia',
                                  'Jakarta',
                                  'Surabaya',
                                  'Jember'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey[400],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Lihat Detail",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xffF2994A)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff779bdd),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "8450",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "Jumlah",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        ),
                        Text(
                          "Kasus",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff9997),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "726",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "Kasus",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        ),
                        Text(
                          "Kematian",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4cd49d),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "765",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "Kasus",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        ),
                        Text(
                          "Sembuh",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.fromLTRB(30, 20, 20, 20),
                child: Text(
                  "World Covid Confirmation",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 365,
                height: 149,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(image: AssetImage('images/male.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Kasus Coronavirus",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff7195D7)),
                        ),
                        Text(
                          "3,836,183",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1B2D49)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 365,
                height: 149,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(image: AssetImage('images/female.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Kasus Kematian",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF9594)),
                        ),
                        Text(
                          "265,364",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1B2D49)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 365,
                height: 149,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(image: AssetImage('images/doctor.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Kasus Sembuh",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4BD49D)),
                        ),
                        Text(
                          "1,307,608",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1B2D49)),
                        )
                      ],
                    )
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
