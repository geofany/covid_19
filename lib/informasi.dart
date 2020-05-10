import 'package:flutter/material.dart';

class informasi extends StatefulWidget {
  @override
  _informasiState createState() => _informasiState();
}

class _informasiState extends State<informasi> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset("images/bg.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(top: 235),
              // height: 500,
              padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Apa itu Coronavirus ?",
                      style: TextStyle(
                          fontFamily: "WorkSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      splashColor: Colors.orange[600],
                      focusColor: Colors.orange,
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "images/virus.png",
                            height: 75,
                          ),
                          Text(
                            "Mengenal Coronavirus",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7195D7)),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      splashColor: Colors.orange[600],
                      focusColor: Colors.orange,
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "images/info1.png",
                            height: 75,
                          ),
                          Text(
                            "Mencegah Coronavirus",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7195D7)),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      splashColor: Colors.orange[600],
                      focusColor: Colors.orange,
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "images/doctor-2.png",
                            height: 75,
                          ),
                          Text(
                            "Mengantisipasi",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7195D7)),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
