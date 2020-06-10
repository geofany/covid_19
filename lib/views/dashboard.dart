import 'package:covid_19/bloc/api_bloc.dart';
import 'package:covid_19/models/indocovid_response.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    apiBloc.fetchIndoCovid();
    apiBloc.fetchWorldCovid();
    apiBloc.fetchWorldCovidDeath();
    apiBloc.fetchWorldCovidRecover();
    super.initState();
  }

  String dropdownValue = 'Indonesia';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.fromLTRB(20, 20, 30, 20),
                child: Text(
                  "COVID-19 PANDEMI",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
            Container(
                height: 190.0,
                width: 350.0,
                child: Carousel(
                  images: [
                    AssetImage("images/banner-1.png"),
                    AssetImage("images/banner-2.png"),
                    AssetImage("images/banner-3.png")
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.grey,
                  indicatorBgPadding: 15.0,
                  dotBgColor: Colors.orange.withOpacity(0),
                  borderRadius: true,
                )),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(30, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Statistic Overview",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Statistik virus corona di Indonesia",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  )
                ],
              ),
            ),           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/blue.png'))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StreamBuilder(
                        stream: apiBloc.stream,
                        builder: (context,
                            AsyncSnapshot<List<IndoCovidResponse>> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.first.positif,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          );
                        },
                      ),
                      Text(
                        "Jumlah",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      Text(
                        "Kasus",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:
                          DecorationImage(image: AssetImage('images/red.png'))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StreamBuilder(
                        stream: apiBloc.stream,
                        builder: (context,
                            AsyncSnapshot<List<IndoCovidResponse>> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.first.meninggal,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          );
                        },
                      ),
                      Text(
                        "Kasus",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      Text(
                        "Kematian",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/green.png'))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StreamBuilder(
                        stream: apiBloc.stream,
                        builder: (context,
                            AsyncSnapshot<List<IndoCovidResponse>> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.first.sembuh,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          );
                        },
                      ),
                      Text(
                        "Kasus",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      Text(
                        "Sembuh",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(30, 20, 20, 20),
              child: Text(
                "World Covid Confirmation",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 365,
              height: 149,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/male.png',
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kasus Coronavirus",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7195D7)),
                      ),
                      StreamBuilder(
                        stream: apiBloc.streamWorld,
                        builder: (context,
                            AsyncSnapshot<WorldCovidResponse> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.value,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Color(0xff1B2D49),
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 365,
              height: 149,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/female.png',
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kasus Kematian",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFF9594)),
                      ),
                     StreamBuilder(
                        stream: apiBloc.streamWorldDeath,
                        builder: (context,
                            AsyncSnapshot<WorldCovidResponse> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.value,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Color(0xff1B2D49),
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 365,
              height: 149,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/doctor.png',
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kasus Sembuh",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4BD49D)),
                      ),
                      StreamBuilder(
                        stream: apiBloc.streamWorldRecover,
                        builder: (context,
                            AsyncSnapshot<WorldCovidResponse> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.value,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              snapshot.error,
                              style: TextStyle(
                                  color: Color(0xff1B2D49),
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            );
                          }
                          return Text(
                            "...",
                            style: TextStyle(
                                color: Color(0xff1B2D49),
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
