import 'package:covid_19/pertanyaan1.dart';
import 'package:flutter/material.dart';

class diagnosa extends StatefulWidget {
  @override
  _diagnosaState createState() => _diagnosaState();
}

class _diagnosaState extends State<diagnosa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 80, 50, 20),          
      child: Column(
        children: <Widget>[
          Image.asset("images/banner-4.png"),
          SizedBox(height: 50,),
          Text("Form Diagnosa", style: TextStyle(color: Color(0xff1B2D49), fontFamily: "WorkSans", fontSize: 18, fontWeight: FontWeight.bold),),
          Text("Jawab setiap pertanyaan yang ditanyakan", style: TextStyle(color: Color(0xff8F8F8F), fontFamily: "Poppins", fontSize: 12),),
          SizedBox(height: 100,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => pertanyaan1()));
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
                        "Mulai Diagnosa",
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
    );
  }
}