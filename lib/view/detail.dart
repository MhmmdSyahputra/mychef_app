import 'package:flutter/material.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import, implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.amber,
                // ignore: prefer_const_constructors
                child: Text("Step1"),
              ),
              Container(
                color: Colors.black,
                // ignore: prefer_const_constructors
                child: Text("Step1"),
              ),
              Container(
                color: Colors.yellow,
                // ignore: prefer_const_constructors
                child: Text("Step1"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
