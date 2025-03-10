import 'package:flutter/material.dart';
import 'package:food_app/pages/loginPage.dart';
import 'package:food_app/pages/menu/detailOrderPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.username});
  final String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang!, ${widget.username}'),
        automaticallyImplyLeading: false,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (route) => false);
              },
              icon: Icon(Icons.logout)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text("Mau makan apa hari ini?",
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image(image: AssetImage('assets/gorengan.jpg')),
          ),
          Text(
            'Menu Makanan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
              child: GridView.count(crossAxisCount: 2, children: [
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_aci.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Aci',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 10.000,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Aci';
                      int harga = 10000;
                      String gambar = 'assets/tahu_aci.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_bulat.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Bulat',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 5.000,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Bulat';
                      int harga = 8000;
                      String gambar = 'assets/tahu_bulat.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_walik.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Walik',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 12.000,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Walik';
                      int harga = 12000;
                      String gambar = 'assets/tahu_walik.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_bakso.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Bakso',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 15.000,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Bakso';
                      int harga = 15000;
                      String gambar = 'assets/tahu_bakso.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_sumedang.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Sumedang',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 7.500,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Sumedang';
                      int harga = 7500;
                      String gambar = 'assets/tahu_sumedang.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/tahu_susu.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Tahu Susu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Harga: Rp 16.500,-'),
                  InkWell(
                    onTap: () {
                      String menu = 'Tahu Susu';
                      int harga = 16500;
                      String gambar = 'assets/tahu_susu.jpg';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    child: Text(
                      'Pesan Sekarang',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
