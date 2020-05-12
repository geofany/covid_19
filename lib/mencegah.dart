import 'package:flutter/material.dart';

class mencegah extends StatefulWidget {
  @override
  _mencegahState createState() => _mencegahState();
}

class _mencegahState extends State<mencegah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xffFEA453),
      // ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("images/bg.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(top: 235),
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: BoxDecoration(
                    color: Color(0xffF4F7FC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/info1.png",
                            height: 50,
                          ),
                          Text(
                            "   Mencegah Coronavirus",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info1.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Cuci tangan",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "dengan sabun",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info2.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Tutup hidung dan",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "mulut saat bersin",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info3.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Masukkan tissue ke",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "tempat sampah",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info4.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Jaga jarak",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "sosial anda",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info5.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Gunakan masker",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "saat bepergian",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "images/info6.png",
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Jangan sentuh",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "wajah anda",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
