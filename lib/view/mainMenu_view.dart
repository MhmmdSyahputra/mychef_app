import 'package:flutter/material.dart';
import 'beranda.dart';
import 'profile.dart';
import 'upload.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Upload'),
    Text('Notif'),
    Text('Profil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget body = _widgetOptions.elementAt(_selectedIndex);
    switch (_selectedIndex) {
      case 0:
        body = Beranda();
        break;
      case 1:
        //body = SearchPage();
        break;
      case 2:
        body = Upload();
        break;
      case 3:
        //body = NotificationPage();
        break;
      case 4:
        body = ProfilePage();
        break;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Chef App'),
        ),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_upload),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notif',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor:
              Colors.black, // ubah warna ikon yang dipilih menjadi hitam
          unselectedItemColor: Colors.black.withOpacity(
              0.6), // ubah warna ikon yang tidak dipilih menjadi hitam transparan
        ),
      ),
    );
  }
}
