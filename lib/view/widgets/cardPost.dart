import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:p01/view/detail.dart';

class CardPost extends StatefulWidget {
  final coverResep;
  final namauser;
  final title;
  final descripsi;
  final bahan;
  final List<String> step;

  const CardPost({
    super.key,
    required this.coverResep,
    required this.namauser,
    required this.title,
    required this.descripsi,
    required this.bahan,
    required this.step,
  });

  @override
  State<CardPost> createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(
            coverResep: widget.coverResep,
            namauser: widget.namauser,
            title: widget.title,
            descripsi: widget.descripsi,
            bahan: widget.bahan,
            step: widget.step,
          ),
        ));
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.coverResep),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.namauser,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.descripsi,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
