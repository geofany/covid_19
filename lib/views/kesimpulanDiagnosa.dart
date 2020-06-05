import 'package:covid_19/bloc/fc_bloc.dart';
import 'package:covid_19/constants/strings.dart';
import 'package:covid_19/main.dart';
import 'package:covid_19/models/kesimpulan.dart';
import 'package:covid_19/models/kondisi.dart';
import 'package:flutter/material.dart';

class KesimpulanDiagnosa extends StatefulWidget {
  final int resiko;
  final List kondisi;
  KesimpulanDiagnosa({this.resiko, this.kondisi});

  @override
  _KesimpulanDiagnosaState createState() => _KesimpulanDiagnosaState();
}

class _KesimpulanDiagnosaState extends State<KesimpulanDiagnosa> {
  final ForwardChainingBloc _bloc = ForwardChainingBloc();
  var saran = [];

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
                              "Respon anda",
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
                              child: _responWidget()),
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
                              child: _resikoWidget()),
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
                            child: _saranWidget()
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

  Widget _resikoWidget() {
    return StreamBuilder(
      stream: _bloc.kesimpulanStream,
      builder: (BuildContext context, AsyncSnapshot<Kesimpulan> snapshot) {
        if (snapshot.hasData) {
          Kesimpulan kesimpulan = snapshot.data;
          return Text(
            "Anda beresiko "+kesimpulan.kesimpulan.toLowerCase()+" tertular COVID 19",
            style: TextStyle(
                color: Color(0xff8F8F8F),
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.justify,
          );
        } else {
          _bloc.getKesimpulan(widget.resiko);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            ),
          );
        }
      },
    );
  }

  Widget _responWidget() {
    return StreamBuilder(
      stream: _bloc.kondisiStream,
      builder: (BuildContext context, AsyncSnapshot<List<Kondisi>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: snapshot.data.length,
            itemBuilder: (context, itemPosition) {
              Kondisi kondisi = snapshot.data[itemPosition];
              return widget.kondisi[itemPosition] == 1
                  ? Text(
                      "- " + kondisi.luaran,
                      style: TextStyle(
                          color: Color(0xff8F8F8F),
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  : Container();
            },
          );
        } else {
          _bloc.getAllKondisi();
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            ),
          );
        }
      },
    );
  }

  Widget _saranWidget() {
    if ((widget.kondisi[3] == 1 || widget.kondisi[4] == 1) &&
        widget.kondisi[5] == 1) {
      saran.add(informasi456);
    } else if (widget.kondisi[3] == 1 || widget.kondisi[4] == 1) {
      saran.add(informasi45);
    } else if (widget.kondisi[0] == 1 ||
        widget.kondisi[1] == 1 ||
        widget.kondisi[2] == 1) {
      saran.add(informasi123);
    } else if (widget.kondisi[0] == 0 &&
        widget.kondisi[1] == 0 &&
        widget.kondisi[2] == 0) {
      saran.add(informasi);
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: saran.length,
      itemBuilder: (context, itemPosition) {
        return Text(
          saran[itemPosition],
          style: TextStyle(
              color: Color(0xff8F8F8F),
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w500),
        );
      },
    );
  }
}
