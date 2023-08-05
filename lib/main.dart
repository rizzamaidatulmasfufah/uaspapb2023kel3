import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS PAPB 2023',
      home: MyHomePage(),
    );
  }
}

// variabel untuk gambar
var headerImage =
    'https://i.ibb.co/s1RpfXD/pecel.jpg';

var pecelImage =
    'https://i.ibb.co/Smfw2R0/pecel2.jpg';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppbar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            HeaderPecel(),
            SizedBox(height: 10.0),
            MenuBar(),
            SizedBox(height: 20.0),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}
//class bawah mengambang 
class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Keranjang', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//class FlutterClipPolygon Menu
class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: FlutterClipPolygon(
        sides: 6,
        child: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//bagian pecel judul pecel menu
class MenuItemsList extends StatelessWidget {
  const MenuItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Menu Pilihan',
            style: TextStyle(fontSize: 24.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(),
          MenuItem(),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}
//class menu item pecel menu
class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, //untuk mengatur penempatan dan penyusunan child dari tepi kiri
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              pecelImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('4.5')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Pecel Sambel Tumpang',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}
//listView list menu bar
class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 100.0,
        child: ListView( 
          scrollDirection: Axis.horizontal,//bisa scroll kanan kiri
          children: <Widget>[
            SelectListMenuBar(),//dipanggil isi
            SelectListMenuBar(),
            SelectListMenuBar(),
          ],
        ),
      ),
    );
  }
}
//isi list manu bar
class SelectListMenuBar extends StatelessWidget {
  const SelectListMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Container(
                height: 100.0,
                width: 460.0,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.bowlRice,
                      color: Color.fromARGB(255, 200, 247, 208),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Menu Spesial',
                      style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            Container(
              height: 100.0,
              width: 120.0,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Color.fromARGB(255, 242, 208, 208),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Menu Terlaris',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 100.0,
              width: 124.0,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: Color.fromARGB(255, 197, 210, 248),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Minuman',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
//pecel header
class HeaderPecel extends StatelessWidget {
  const HeaderPecel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 300.0,
        child: ListView( 
          scrollDirection: Axis.horizontal,//bisa scroll kanan kiri
          children: <Widget>[
            ItemCard(),//dipanggil class kotak gambar
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}
//class kotak gambar
class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 320.0,
          width: 540.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(headerImage), fit: BoxFit.cover)),
          child: Stack(//STACK  untuk menumpuk beberapa widget di atas satu sama lain
            children: <Widget>[
              Container(
                height: 320.0,
                width: 540.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Promo 20%',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'Untuk 10 Pembeli Pertama',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
