import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p01/view/detail.dart';

class Post {
  final String coverResep;
  final String namauser;
  final String title;
  final String shortText;

  Post(
      {required this.coverResep,
      required this.namauser,
      required this.title,
      required this.shortText});
}

final List<Post> posts = [
  Post(
    coverResep:
        'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    namauser: 'Putra',
    title: 'Resep Burger',
    shortText:
        'Saya ingin memberikan sebuah resep yg saya punya yaitu resep membuat burger daging',
  ),
  Post(
    coverResep:
        'https://images.unsplash.com/photo-1626379801357-537572de4ad6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8anVua2Zvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    namauser: 'Julian',
    title: 'Resep Membuat Roti Lumer',
    shortText:
        'Saya mau memberikan sebuah resep untuk membuat roti yg lumer dan lezat dengan bahan bahan tepung, coklat, dan lain lain',
  ),
  Post(
    coverResep:
        'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRyaW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
    namauser: 'Hedry',
    title: 'Cara Membuat Jus Kueni yang Lezat',
    shortText:
        'Saya ingin memberikan sebuah resep jus kueni yg lezat yg orang tidak banyak tau, dengan bahan bahan sebagi berikut, kueni ',
  ),
  Post(
    coverResep:
        'https://media.istockphoto.com/id/1355739707/photo/roasted-turkey.jpg?s=170667a&w=0&k=20&c=LwwbCeLOHaEH9_RIynm8qiZildaTZQMm-745T0TuwTs=',
    namauser: 'Muhammad Yusof',
    title: 'Resep Membuat Ayam Marquita',
    shortText:
        'Saya akan membagikan sebuah resep makanan yaitu ayam marquita yg lezat dan bergizi dengan ayam yg utuh begini cara nya',
  ),
];

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Detail();
                  },
                ),
              );
              //Navigator.pushNamed(context, '/detail', arguments: posts[index]);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(posts[index].coverResep),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index].namauser,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            posts[index].shortText,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
