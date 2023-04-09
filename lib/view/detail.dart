import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final coverResep;
  final namauser;
  final title;
  final descripsi;
  final bahan;
  final List<String> step;

  const DetailPage({
    required this.coverResep,
    required this.namauser,
    required this.title,
    required this.descripsi,
    required this.bahan,
    required this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Icon(Icons.person),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    namauser,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            // TITLE ----------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // COVER IMG -----------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Image.network(coverResep)),
                ],
              ),
            ),
            // DESCRIPSI ---------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      descripsi,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Bahan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            // BAHAN -------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Expanded(
                  child: Text(
                    bahan,
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            // STEP -------------
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(step.length, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step ${index + 1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        step[index],
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
