import 'package:covid_19/pertanyaan3.dart';
import 'package:flutter/material.dart';

class pertanyaan2 extends StatefulWidget {
  @override
  _pertanyaan2State createState() => _pertanyaan2State();
}

class _pertanyaan2State extends State<pertanyaan2> {
  int _radioValue1 = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 80, 50, 20),
        child: Column(
          children: <Widget>[
            Image.asset("images/banner-4.png"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Form Diagnosa",
              style: TextStyle(
                  color: Color(0xff1B2D49),
                  fontFamily: "WorkSans",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Jawab setiap pertanyaan yang ditanyakan",
              style: TextStyle(
                  color: Color(0xff8F8F8F),
                  fontFamily: "Poppins",
                  fontSize: 12),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              height: 80,
              width: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Text(
                "Apakah anda mengalami gejala batuk berat ?",
                style: TextStyle(
                    color: Colors.grey, fontSize: 13, fontFamily: "Poppins"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Berikan jawaban anda !",
                style: TextStyle(
                    color: Colors.grey, fontSize: 12, fontFamily: "Poppins")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioValue1,
                  onChanged: _handleRadioValueChange1,
                ),
                Text(
                  'YA',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 12, fontFamily: "Poppins"),
                ),
                Radio(
                  value: 1,
                  groupValue: _radioValue1,
                  onChanged: _handleRadioValueChange1,
                ),
                Text(
                  'TIDAK',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 12, fontFamily: "Poppins"),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => pertanyaan3()));},
                    child: Text(
                      "Lanjut ke step-3",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: "Poppins"),
                    )))
          ],
        ),
      ),
    );
  }
}