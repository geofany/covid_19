import 'package:covid_19/cekDiagnosa.dart';
import 'package:flutter/material.dart';

class pertanyaan7 extends StatefulWidget {
  @override
  _pertanyaan7State createState() => _pertanyaan7State();
}

class _pertanyaan7State extends State<pertanyaan7> {
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
              height: 160,
              width: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Apakah Anda memiliki salah satu kondisi di bawah ini: ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "- Berusia di atas 60 tahun",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "- Memiliki riwayat penyakit jantung, penyakit paru-paru, atau penyakit kencing manis",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "- Sedang menjalani pengobatan kanker",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins"),
                  ),
                ],
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
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => cekDiagnosa()));},
                    child: Text(
                      "Lanjut ke step-8",
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
