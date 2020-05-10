import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bantuan extends StatefulWidget {
  @override
  _bantuanState createState() => _bantuanState();
}

class _bantuanState extends State<bantuan> {
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
                      "Pusat Bantuan",
                      style: TextStyle(
                          fontFamily: "WorkSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Jika anda merasa memiliki gejala penyakit, silahkan hubungi kontak layanan di bawah ini :",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13,
                        color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      splashColor: Colors.orange[600],
                      focusColor: Colors.orange,
                      padding: EdgeInsets.all(25),
                      onPressed: () {
                        launch("tel://911");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "images/phone.png",
                            height: 30,
                          ),
                          Text(
                            "Info Layanan",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff46D39A)),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
