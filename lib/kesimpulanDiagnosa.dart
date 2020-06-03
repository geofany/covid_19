import 'package:covid_19/diagnosa.dart';
import 'package:covid_19/main.dart';
import 'package:flutter/material.dart';

class kesimpulanDiagnosa extends StatefulWidget {
  @override
  _kesimpulanDiagnosaState createState() => _kesimpulanDiagnosaState();
}

class _kesimpulanDiagnosaState extends State<kesimpulanDiagnosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/doctor.png",
                    width: 150,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kesimpulan Diagnosa",
                    style: TextStyle(
                        color: Color(0xff1B2D49),
                        fontFamily: "WorkSans",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kesimpulan didapatkan dari setiap jawaban",
                    style: TextStyle(
                        color: Color(0xff8F8F8F),
                        fontFamily: "Poppins",
                        fontSize: 12),
                  ),
                  Text(
                    "yang sudah anda isi sebelumnya.",
                    style: TextStyle(
                        color: Color(0xff8F8F8F),
                        fontFamily: "Poppins",
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "images/box.png",
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Resiko",
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: TextStyle(
                                  color: Color(0xff8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "images/box.png",
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Saran",
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: TextStyle(
                                  color: Color(0xff8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/button.png'))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Kembali ke Beranda",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
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
