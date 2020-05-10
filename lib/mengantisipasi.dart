import 'package:flutter/material.dart';

class mengantisipasi extends StatefulWidget {
  @override
  _mengantisipasiState createState() => _mengantisipasiState();
}

class _mengantisipasiState extends State<mengantisipasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFEA453),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("images/bg.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(top: 235),
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: BoxDecoration(
                    color: Color(0xffF4F7FC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/doctor-2.png",
                            height: 50,
                          ),
                          Text(
                            "   Mengantisipasi",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sampai saat ini belum ada vaksin untuk mencegah infeksi virus corona. Namun, setidaknya ada beberapa cara yang bisa dilakukan untuk mengurangi risiko terjangkit virus ini. Berikut upaya yang bisa dilakukan: ",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Sering-seringlah mencuci tangan dengan sabun dan air selama 20 detik hingga bersih.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Hindari menyentuh wajah, hidung, atau mulut saat tangan dalam keadaan kotor atau belum dicuci.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Hindari kontak langsung atau berdekatan dengan orang yang sakit.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "4. Hindari menyentuh hewan atau unggas liar. ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.grey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "5. Hindari menyentuh hewan atau unggas liar.",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.grey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "6. Membersihkan dan mensterilkan permukaan benda yang sering digunakan.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "7. Tutup hidung dan mulut ketika bersin atau batuk dengan tisu. Kemudian, buanglah tisu dan cuci tangan hingga bersih.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "8. Jangan keluar rumah dalam keadaan sakit.",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.grey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "9. Kenakan masker dan segera berobat ke fasilitas kesehatan ketika mengalami gejala penyakit saluran napas.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
