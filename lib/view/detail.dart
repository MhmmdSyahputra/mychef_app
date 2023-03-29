import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                child: Text("Step1"),
              ),
              Container(
                color: Colors.black,
                child: Text("Step1"),
              ),
              Container(
                color: Colors.yellow,
                child: Text("Step1"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
