import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              radius: 50, // ukuran radius lingkaran
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1679189792474-6c2796dc78ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                              ), // gambar background foto
                            ),
                          ),
                          Container(
                            child: Text("Putra"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text("12.000"),
                            ),
                          ),
                          Container(
                            child: Text("Pengikut"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            child: Text("12.000"),
                          ),
                          Container(
                            child: Text("Mengikuti"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            child: Text("12.000"),
                          ),
                          Container(
                            child: Text("Pengikut"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Container(
                    child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      width: 200,
                      child: ElevatedButton(
                        child: Text('Edit Profil'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 200,
                      child: ElevatedButton(
                        child: Text('Edit Profil'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
