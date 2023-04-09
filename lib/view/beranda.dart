import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p01/view/detail.dart';
import 'package:p01/view/widgets/cardPost.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CardPost(
                  coverResep:
                      'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                  namauser: 'Putra',
                  title: 'Resep Burger',
                  descripsi:
                      'Saya ingin memberikan sebuah resep yg saya punya yaitu resep membuat burger daging',
                  bahan:
                      "500 gram daging sapi giling \n1 sendok teh garam \n1/2 sendok teh merica bubuk \n4 buah roti burger \n4 lembar daun selada \n4 lembar keju cheddar \n4 sendok makan saus tomat \n1 buah tomat, iris tipis \n1 buah bawang bombay, iris tipis \n1 sendok makan minyak goreng",
                  step: [
                    "Campurkan daging sapi giling dengan garam dan merica bubuk. Aduk rata hingga tercampur dengan baik.",
                    "Bentuk daging sapi menjadi 4 buah bulatan pipih.",
                    "Panaskan minyak goreng di atas wajan. Panggang daging sapi selama 4-5 menit di setiap sisinya atau hingga matang.",
                    "Iris tomat dan bawang bombay tipis-tipis.",
                    "Panggang roti burger di atas wajan selama 1-2 menit di setiap sisinya atau hingga kecokelatan.",
                    "Letakkan selembar daun selada di atas bagian bawah roti burger. Taruh 1 buah bulatan daging sapi di atas selada.",
                    "Letakkan 1 lembar keju cheddar di atas daging sapi yang masih panas, biarkan sebentar hingga keju meleleh.",
                    "Letakkan beberapa irisan tomat dan bawang bombay di atas keju cheddar.",
                    "Berikan saus tomat di atas irisan tomat dan bawang bombay.",
                    "Tutup burger dengan bagian atas roti. Sajikan selagi masih hangat.",
                  ]),
              // CardPost(
              //   coverResep:
              //       'https://images.unsplash.com/photo-1626379801357-537572de4ad6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8anVua2Zvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
              //   namauser: 'Julian',
              //   title: 'Resep Membuat Roti Lumer',
              //   descripsi:
              //       'Saya mau memberikan sebuah resep untuk membuat roti yg lumer dan lezat dengan bahan bahan tepung, coklat, dan lain lain',
              // ),
              // CardPost(
              //   coverResep:
              //       'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRyaW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
              //   namauser: 'Hedry',
              //   title: 'Cara Membuat Jus Kueni yang Lezat',
              //   descripsi:
              //       'Saya ingin memberikan sebuah resep jus kueni yg lezat yg orang tidak banyak tau, dengan bahan bahan sebagi berikut, kueni ',
              // ),
              // CardPost(
              //   coverResep:
              //       'https://media.istockphoto.com/id/1355739707/photo/roasted-turkey.jpg?s=170667a&w=0&k=20&c=LwwbCeLOHaEH9_RIynm8qiZildaTZQMm-745T0TuwTs=',
              //   namauser: 'Muhammad Yusof',
              //   title: 'Resep Membuat Ayam Marquita',
              //   descripsi:
              //       'Saya akan membagikan sebuah resep makanan yaitu ayam marquita yg lezat dan bergizi dengan ayam yg utuh begini cara nya',
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}
