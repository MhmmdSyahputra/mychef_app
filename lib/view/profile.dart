import 'package:flutter/material.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import, implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:p01/utils/global.colors.dart';
// ignore: unused_import
import 'beranda.dart';
import 'edit.profile.view.dart';
import 'main.menu.dart';
import 'login.view.dart';

// ignore: use_key_in_widget_constructors
class ProfilePage extends StatelessWidget {
  final List<String> images = [
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FuZHdpY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FuZHdpY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1511920170033-f8396924c348?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1592415486689-125cbbfcbee2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNhbmR3aWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            Expanded(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 150,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 0),
                        // ignore: prefer_const_constructors
                        child: CircleAvatar(
                          radius: 50, // ukuran radius lingkaran
                          // ignore: prefer_const_constructors
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1679189792474-6c2796dc78ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                          ), // gambar background foto
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                          // ignore: prefer_const_constructors
                          child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Muhammad Syahputra",
                          textAlign: TextAlign.center,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 10,
            ),
            Expanded(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 150,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: avoid_unnecessary_containers, prefer_const_constructors
                      Container(child: Text("14")),
                      Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(bottom: 20),
                        // ignore: prefer_const_constructors
                        child: Text("Postingan"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 10,
            ),
            Expanded(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 70,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: avoid_unnecessary_containers, prefer_const_constructors
                      Container(child: Text("2.000")),
                      Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(bottom: 20),
                        // ignore: prefer_const_constructors
                        child: Text("Pengikut"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 10,
            ),
            Expanded(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 70,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: avoid_unnecessary_containers, prefer_const_constructors
                      Container(child: Text("1")),
                      Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(bottom: 20),
                        // ignore: prefer_const_constructors
                        child: Text("Mengikuti"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(left: 5, right: 5, bottom: 40),
                  width: 185,
                  child: ElevatedButton(
                    // ignore: prefer_const_constructors, sort_child_properties_last
                    child: Text('Edit Profil'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            // ignore: prefer_const_constructors
                            return EditProfile();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(left: 5, right: 5, bottom: 40),
                  width: 185,
                  child: ElevatedButton(
                    // ignore: prefer_const_constructors, sort_child_properties_last
                    child: Text('Logout'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginView();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(children: [
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.all(15),
              // ignore: prefer_const_constructors
              child: Text(
                "My Resep",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
        // ignore: prefer_const_constructors
        Expanded(
          // ignore: prefer_const_constructors
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
            child: GridView.builder(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(8),
          // ignore: prefer_const_constructors
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: images.length,
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            );
          },
        )),
      ],
    ));
  }
}
