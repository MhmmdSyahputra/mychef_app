import 'package:flutter/material.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import, implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:p01/utils/global.colors.dart';

// ignore: use_key_in_widget_constructors
class Upload extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  int _inputBoxCount = 1;

  // membuat fungsi setstate
  void _addInputBox() {
    setState(() {
      _inputBoxCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  // ignore: prefer_const_constructors
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _inputBoxCount,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            "Step ${index + 1}",
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Divider(
                          thickness: 1.0,
                          color: Colors.black,
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              height: 100,
                              child: TextField(
                                maxLines: null,
                                decoration: InputDecoration(
                                  hintText:
                                      'Masukkan Step ${index + 1} Disini..',
                                  // ignore: prefer_const_constructors
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      _addInputBox; //memanggil fungsi yg menerapkan setState
                    },
                    // ignore: prefer_const_constructors, sort_child_properties_last
                    child: Text(
                      "Tambah Step",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalColors.buttColor
                      ),
                  ),
                ),
                Container(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        // ignore: prefer_const_constructors
                        SnackBar(
                          // ignore: prefer_const_constructors
                          content: Text('Resep berhasil ditambah'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: GlobalColors.mainColor,
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(16),
                    ),
                    // ignore: prefer_const_constructors
                    child: Text('Tambah Resep Saya'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
