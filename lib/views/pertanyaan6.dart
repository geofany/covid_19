import 'package:covid_19/views/cekDiagnosa.dart';
import 'package:covid_19/views/pertanyaan7.dart';
import 'package:flutter/material.dart';

class Pertanyaan6 extends StatefulWidget {
  final List jawaban;
  Pertanyaan6(this.jawaban);

  @override
  _Pertanyaan6State createState() => _Pertanyaan6State();
}

class _Pertanyaan6State extends State<Pertanyaan6> {
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
              height: 100,
              width: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Text(
                "apakah ada kontak dengan orang yang memiliki gejala flu, yaitu demam, batuk, dan pilek, atau dengan orang yang diduga terinfeksi virus Corona ?",
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
                  'TIDAK / TIDAK TAHU',
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
                      "Lanjut ke step-7",
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
    widget.jawaban[5] = _radioValue1;
    if (_radioValue1 == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Pertanyaan7(widget.jawaban)));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CekDiagnosa(widget.jawaban)));
    }
  }
}
