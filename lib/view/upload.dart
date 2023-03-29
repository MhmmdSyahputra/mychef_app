import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
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
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _inputBoxCount,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            "Step ${index + 1}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.black,
                        ),
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
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed:
                        _addInputBox, //memanggil fungsi yg menerapkan setState
                    child: Text("Tambah Step"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Resep berhasil ditambah'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(16),
                    ),
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
