import 'package:covid_19/views/cekDiagnosa.dart';
import 'package:covid_19/views/pertanyaan5.dart';
import 'package:flutter/material.dart';

class Pertanyaan4 extends StatefulWidget {
  final List jawaban;
  Pertanyaan4(this.jawaban);

  @override
  _Pertanyaan4State createState() => _Pertanyaan4State();
}

class _Pertanyaan4State extends State<Pertanyaan4> {
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
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(
              height: 48,
            ),
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
              "Jawab setiap Pertanyaan yang ditanyakan",
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
                "Apakah anda memiliki riwayat bepergian ke negara dengan wabah virus Corona di luar Indonesia ?",
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
                  value: 1,
                  groupValue: _radioValue1,
                  onChanged: _handleRadioValueChange1,
                ),
                Text(
                  'YA',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 12, fontFamily: "Poppins"),
                ),
                Radio(
                  value: 0,
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
                    onTap: () {
                      _navigateTo();
                    },
                    child: Text(
                      "Lanjut ke step-5",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: "Poppins"),
                    ))),
            SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }

  _navigateTo() {
    widget.jawaban[3] = _radioValue1;
    if (_radioValue1 == 1) {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => CekDiagnosa(widget.jawaban)));
    } else {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => Pertanyaan5(widget.jawaban)));
    }    
  }
}
