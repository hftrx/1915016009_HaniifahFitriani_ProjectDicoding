import 'package:flutter/material.dart';
import 'package:pa_dicoding/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Dicoding - Halaman 2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Tipe { unknown, jazz, brio, civic }
enum Warna { unknown, merah, hitam, putih }

class _MyHomePageState extends State<MyHomePage> {
  int angka = 0;
  String namaLengkap = "";
  String Alamat = "";
  final ctrlnamaLengkap = TextEditingController();
  final ctrlAlamat = TextEditingController();
  bool isYakin = false;
  Tipe tipe = Tipe.unknown;
  Warna warna = Warna.unknown;
  // DateTime? _dateTime;
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  void dispose() {
    ctrlnamaLengkap.dispose();
    ctrlAlamat.dispose();
    super.dispose();
  }

  String getTipe(Tipe value) {
    if (value == Tipe.jazz) {
      return "Honda Jazz";
    } else if (value == Tipe.brio) {
      return "Honda Brio";
    } else if (value == Tipe.civic) {
      return "Honda Civic";
    }
    return "";
  }

  String getWarna(Warna value) {
    if (value == Warna.merah) {
      return "Merah";
    } else if (value == Warna.hitam) {
      return "Hitam";
    } else if (value == Warna.putih) {
      return "Putih";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Dicoding - Halaman 2"),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => MainPage()));
        },
        tooltip: 'Previous Page',
        child: IconTheme(
          data: new IconThemeData(
            color: Colors.blue,
          ),
          child: new Icon(Icons.arrow_circle_left),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: const Center(
                    child: Text("Form Pemesanan Mobil Honda",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              Container(
                margin: EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  children: [
                    TextField(
                      controller: ctrlnamaLengkap,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Isi Nama Legkap",
                          labelText: "Nama Pembeli"),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: ctrlAlamat,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Isi Alamat Lengkap",
                          labelText: "Alamat"),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: Column(
                        children: [
                          Text("Pilih Tipe Mobil",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Honda Jazz"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.jazz,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Honda Brio"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.brio,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Honda Civic"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.civic,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Column(
                  children: [
                    Text("Pilih Warna Mobil",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Merah"),
                      leading: Radio(
                        groupValue: warna,
                        value: Warna.merah,
                        onChanged: (Warna? value) {
                          setState(() {
                            warna = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Hitam"),
                      leading: Radio(
                        groupValue: warna,
                        value: Warna.hitam,
                        onChanged: (Warna? value) {
                          setState(() {
                            warna = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Putih"),
                      leading: Radio(
                        groupValue: warna,
                        value: Warna.putih,
                        onChanged: (Warna? value) {
                          setState(() {
                            warna = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: [
                    Text("Silahkan Pilih Tanggal Pemesanan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text("Pilih Tanggal"),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2099),
                  ).then((date) {
                    setState(() {
                      selectedDate = date!;
                    });
                  });
                },
              ),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                            "Saya yakin bahwa data yang saya isi diatas sudah benar."),
                        leading: Checkbox(
                          value: isYakin,
                          onChanged: (bool? value) {
                            setState(() {
                              isYakin = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 20),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          namaLengkap = ctrlnamaLengkap.text;
                          Alamat = ctrlAlamat.text;
                        });
                      },
                      child: Text("Tampilkan Data Pesanan"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text("Data Pesanan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text("Nama Lengkap : $namaLengkap",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Text("Alamat : $Alamat",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Text("Tipe Mobil : ${getTipe(tipe)}",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Text("Warna Mobil : ${getWarna(warna)}",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Text("Tanggal Pemesanan : " + "${selectedDate}".split(' ')[0],
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 20),
            child: Column(
              children: [
                Text(
                    "Apakah data diatas sudah benar? ${isYakin ? "Sudah" : "Belum"}",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
