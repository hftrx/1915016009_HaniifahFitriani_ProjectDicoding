import 'package:flutter/material.dart';
import 'package:pa_dicoding/page2.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Project Dicoding - Halaman 1'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 104, 104, 104),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, new MaterialPageRoute(builder: (context) => MyApp()));
          },
          tooltip: 'Next Page',
          child: IconTheme(
            data: new IconThemeData(
              color: Colors.blue,
            ),
            child: new Icon(Icons.arrow_circle_right),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              child: const Center(
                  child: Text("CIVIC Type R 6 Speed M/T",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ))),
            ),
            Container(
              width: 500,
              height: 350,
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mobil1.png"),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Material(
          child: InkWell(
            child: Container(
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Column(children: [
                        Text(
                          'Spesifikasi',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontWeight: FontWeight.w600),
                        ),
                      ])),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(children: [
                      Text(
                        '2.0 L VTEC Turbo Engine 310 PS\n6 M/T\n20 Alloy Wheel\n3 Driving Mode with Adaptive Damper System',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                          height: 2,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    width: 220,
                    height: 55,
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Pesan Sekarang",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Color.fromARGB(255, 0, 0, 0)),
              height: 350,
            ),
          ),
          color: Colors.transparent,
        ));
  }
}
