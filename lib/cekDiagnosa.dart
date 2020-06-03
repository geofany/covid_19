import 'package:covid_19/kesimpulanDiagnosa.dart';
import 'package:flutter/material.dart';

class cekDiagnosa extends StatefulWidget {
  @override
  _cekDiagnosaState createState() => _cekDiagnosaState();
}

class _cekDiagnosaState extends State<cekDiagnosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 80, 50, 20),
        child: Column(
          children: <Widget>[
            Image.asset("images/banner-4.png"),
            SizedBox(
              height: 130,
            ),
            Text(
              "Semua pertanyaan sudah terjawab.",
              style: TextStyle(
                  color: Color(0xff1B2D49),
                  fontFamily: "WorkSans",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Silahkan cek diagnosa anda.",
              style: TextStyle(
                  color: Color(0xff1B2D49),
                  fontFamily: "WorkSans",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kesimpulanDiagnosa()));
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
                      "Cek Hasil Diagnosa",
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
    );
  }
}
