import 'package:covid_19/views/kesimpulanDiagnosa.dart';
import 'package:flutter/material.dart';

class CekDiagnosa extends StatefulWidget {
  final List jawaban;
  CekDiagnosa(this.jawaban);

  @override
  _CekDiagnosaState createState() => _CekDiagnosaState();
}

class _CekDiagnosaState extends State<CekDiagnosa> {
  var resiko;

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
                _forwardChainig(widget.jawaban);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KesimpulanDiagnosa(resiko: resiko, kondisi: widget.jawaban,)));
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

  _forwardChainig(List jawaban) {
    for (var i = 0; i < jawaban.length; i++) {
      jawaban[i] == null ? jawaban[i] = 0 : jawaban[i] = jawaban[i];
    }
    if (jawaban[5] == 1 && jawaban[6] == 1 && jawaban[7] == 1) {
      resiko = 4;
    } else if (jawaban[5] == 1 || jawaban[6] == 1) {
      resiko = 2;
    } else if (jawaban[3] == 1 || jawaban[4] == 1) {
      resiko = 3;
    } else if (jawaban[0] == 1 || jawaban[1] == 1 || jawaban[2] == 1) {
      resiko = 1;
    } else {
      resiko = null;
    }
  }
}
