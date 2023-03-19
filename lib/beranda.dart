import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Beranda> {
  int _counter = 0;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Upload'),
    Text('Notif'),
    Text('Profil'),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //if (index == 4) {
    //  // jika indeks item adalah 4 (profil)
    //  Navigator.push(
    //    context,
    //    MaterialPageRoute(
    //        builder: (context) => ProfilePage()), // navigasi ke halaman profil
    //  );
    //}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Chef App'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding:
                  EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 10),
              color: Colors.grey[200], // warna background
              child: ListTile(
                leading: Image.network(
                  'https://images.unsplash.com/photo-1679189792474-6c2796dc78ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                  width: 150.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
                title: Row(
                  children: [
                    Icon(Icons.person, size: 24), // Icon di sebelah kiri
                    SizedBox(width: 8), // Spacer antara Icon dan Text
                    Text(
                      'Putra',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ), // Text di sebelah kanan
                  ],
                ),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.s',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_upload, color: Colors.black),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              label: 'Notif',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
