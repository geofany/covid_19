import 'package:covid_19/bantuan.dart';
import 'package:covid_19/dashboard.dart';
import 'package:covid_19/diagnosa.dart';
import 'package:covid_19/informasi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    dashboard(),
    informasi(),
    bantuan(),
    diagnosa()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7FC),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/healthcare.png')),
            title: Text(
              'Kasus',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/speaker.png')),
            title: Text(
              'Informasi',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/round.png')),
            title: Text(
              'Bantuan',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/interface.png')),
            title: Text(
              'Diagnosa',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
