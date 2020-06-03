import 'package:flutter/material.dart';

class kesimpulanDiagnosa extends StatefulWidget {
  @override
  _kesimpulanDiagnosaState createState() => _kesimpulanDiagnosaState();
}

class _kesimpulanDiagnosaState extends State<kesimpulanDiagnosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
          child: Column(
            children: <Widget>[
              Image.asset("images/doctor.png", width: 150,),
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
              SizedBox(height: 30,),
              Row(
                
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => pertanyaan1()));
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
        ),
      ),
    );
  }
}
