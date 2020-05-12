import 'package:flutter/material.dart';

class mengenal extends StatefulWidget {
  @override
  _mengenalState createState() => _mengenalState();
}

class _mengenalState extends State<mengenal> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xffFEA453),
        // ),
        body: Stack(
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
                          "images/virus.png",
                          height: 50,
                        ),
                        Text(
                          "   Mengenal Coronavirus",
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
                  Text(
                    "Coronavirus atau virus corona merupakan keluarga besar virus yang menyebabkan infeksi saluran pernapasan atas ringan hingga sedang, seperti penyakit flu. Banyak orang terinfeksi virus ini, setidaknya satu kali dalam hidupnya.",
                    style: TextStyle(
                        fontFamily: "Poppins", fontSize: 13, color: Colors.grey),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Namun, beberapa jenis virus corona juga bisa menimbulkan penyakit yang lebih serius, seperti Middle East Respiratory Syndrome (MERS-CoV)., Severe Acute Respiratory Syndrome (SARS-CoV) dan Pneumonia.",
                    style: TextStyle(
                        fontFamily: "Poppins", fontSize: 13, color: Colors.grey),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
