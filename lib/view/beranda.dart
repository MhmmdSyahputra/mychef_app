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
            children: const <Widget>[
              CardPost(
                  coverResep:
                      'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                  namauser: 'Muhammad SyahPutra',
                  title: 'Resep Burger',
                  descripsi:
                      'Saya ingin memberikan sebuah resep yg saya punya yaitu resep membuat burger daging',
                  bahan:
                      '500 gram daging sapi giling \n1 sendok teh garam \n1/2 sendok teh merica bubuk \n4 buah roti burger \n4 lembar daun selada \n4 lembar keju cheddar \n4 sendok makan saus tomat \n1 buah tomat, iris tipis \n1 buah bawang bombay, iris tipis \n1 sendok makan minyak goreng',
                  step: [
                    'Campurkan daging sapi giling dengan garam dan merica bubuk. Aduk rata hingga tercampur dengan baik.',
                    'Bentuk daging sapi menjadi 4 buah bulatan pipih.',
                    'Panaskan minyak goreng di atas wajan. Panggang daging sapi selama 4-5 menit di setiap sisinya atau hingga matang.',
                    'Iris tomat dan bawang bombay tipis-tipis.',
                    'Panggang roti burger di atas wajan selama 1-2 menit di setiap sisinya atau hingga kecokelatan.',
                    'Letakkan selembar daun selada di atas bagian bawah roti burger. Taruh 1 buah bulatan daging sapi di atas selada.',
                    'Letakkan 1 lembar keju cheddar di atas daging sapi yang masih panas, biarkan sebentar hingga keju meleleh.',
                    'Letakkan beberapa irisan tomat dan bawang bombay di atas keju cheddar.',
                    'Berikan saus tomat di atas irisan tomat dan bawang bombay.',
                    'Tutup burger dengan bagian atas roti. Sajikan selagi masih hangat.',
                  ]),
              CardPost(
                  coverResep:
                      'https://images.unsplash.com/photo-1626379801357-537572de4ad6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8anVua2Zvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                  namauser: 'Julian',
                  title: 'Resep Membuat Roti Lumer',
                  descripsi:
                      'Saya mau memberikan sebuah resep untuk membuat roti yg lumer dan lezat dengan bahan bahan tepung, coklat, dan lain lain',
                  bahan:
                      '500 gram tepung terigu protein tinggi \n2 sendok makan gula pasir \n1 sendok teh ragi instant \n1/2 sendok teh garam \n1 butir telur \n250 ml susu cair \n50 gram mentega, lelehkan \nKeju cheddar atau meses secukupnya \nSelai cokelat secukupnya',
                  step: [
                    'Campurkan tepung terigu, gula pasir, ragi instant, dan garam dalam sebuah wadah. Aduk rata.',
                    'Tambahkan telur dan susu cair ke dalam wadah, aduk hingga tercampur rata.',
                    'Tambahkan mentega leleh ke dalam adonan, aduk hingga rata dan kalis.',
                    'Tutup wadah dengan kain bersih, biarkan adonan mengembang selama kurang lebih 1 jam hingga mengembang 2 kali lipat.',
                    'Setelah mengembang, aduk adonan hingga udara keluar dari adonan.',
                    'Ambil sejumput adonan dan pipihkan. Berikan keju cheddar atau meses secukupnya dan selai cokelat di atas adonan.',
                    'Lipat adonan dan bulatkan kembali, pastikan isi terbungkus rata.',
                    'Letakkan di atas loyang yang sudah diolesi mentega atau menggunakan baking paper.',
                    'Lakukan langkah 6-8 pada adonan yang lain.',
                    'Diamkan adonan selama kurang lebih 15 menit.',
                    'Panaskan oven suhu 180 derajat Celcius selama 10 menit.',
                    'Panggang roti lumer selama 15-20 menit hingga matang atau kecokelatan.',
                    'Angkat dari oven dan dinginkan sejenak.',
                    'Roti lumer siap disajikan.',
                  ]),
              CardPost(
                coverResep:
                    'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRyaW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                namauser: 'Hedry',
                title: 'Cara Membuat Jus Kueni yang Lezat',
                descripsi:
                    'Saya ingin memberikan sebuah resep jus kueni yg lezat yg orang tidak banyak tau, dengan bahan bahan sebagi berikut, kueni ',
                bahan:
                    '3 buah kueni, kupas dan potong-potong \n1 buah jeruk nipis, ambil airnya \n2 sendok makan madu \n250 ml air es \nEs batu secukupnya',
                step: [
                  'Siapkan blender dan masukkan potongan kueni ke dalam blender.',
                  'Tambahkan air es dan jeruk nipis ke dalam blender.',
                  'Blender semua bahan hingga halus.',
                  'Tambahkan madu ke dalam blender dan blender kembali hingga rata.',
                  'Siapkan gelas saji dan masukkan es batu secukupnya ke dalamnya.',
                  'Tuang jus kueni ke dalam gelas saji yang sudah berisi es batu.',
                  'Aduk-aduk jus kueni hingga rata dengan es batu.',
                  'Jus Kueni siap disajikan.',
                ],
              ),
              CardPost(
                coverResep:
                    'https://media.istockphoto.com/id/995538794/photo/crispy-baked-buffalo-wing-cauliflower-bites.jpg?b=1&s=170667a&w=0&k=20&c=qvYIyRwS8hfn2pIoZEUXYmHhVNjsY0uorOD3OpSTz1w=',
                namauser: 'Khendy',
                title: 'Ayam Goreng Krispi yang lezat',
                descripsi:
                    'Resep Ayam Goreng Krispi yang lezat ini cocok untuk Anda yang ingin mencoba masakan yang gurih dan renyah. Berikut adalah bahan dan langkah-langkah untuk membuatnya:',
                bahan:
                    '1 ekor ayam, potong menjadi 8 bagian \n3 siung bawang putih, haluskan \n1 sendok makan ketumbar bubuk \n1 sendok teh merica bubuk \n1 sendok teh garam \n2 sendok makan kecap manis \n1 sendok makan air asam jawa \nMinyak goreng secukupnya \n\nBahan untuk adonan tepung krispi: \n150 gram tepung terigu protein tinggi \n50 gram tepung maizena \n1/2 sendok teh garam \n1/2 sendok teh baking powder \n1/4 sendok teh merica bubuk \n200 ml air es',
                step: [
                  'Campurkan bawang putih, ketumbar bubuk, merica bubuk, garam, kecap manis, dan air asam jawa dalam sebuah wadah. Aduk hingga merata.',
                  'Lumuri ayam dengan bumbu yang sudah diaduk tadi. Biarkan selama kurang lebih 30 menit.',
                  'Siapkan wajan dan panaskan minyak goreng dengan api sedang.',
                  'Sementara menunggu minyak panas, campurkan tepung terigu, tepung maizena, garam, baking powder, dan merica bubuk dalam wadah yang berbeda. Aduk rata.',
                  'Tambahkan air es ke dalam campuran tepung sedikit demi sedikit sambil diaduk hingga tercampur rata dan berbentuk adonan.',
                  'Ambil potongan ayam yang sudah dibumbui tadi dan celupkan ke dalam adonan tepung krispi. Pastikan seluruh permukaan ayam tertutup adonan.',
                  'Goreng ayam dalam minyak panas hingga warnanya kecokelatan dan matang. Angkat dan tiriskan.',
                  'Ayam Goreng Krispi siap disajikan. Sajikan dengan nasi putih dan sambal atau saus kesukaan Anda.',
                ],
              ),
              CardPost(
                coverResep:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0KIA4uEau5lAIZt7p1NEcwTjEQd0pHBYXBQ&usqp=CAU',
                namauser: 'Novita Adelin',
                title: 'resep Kue Lapis Legit yang lezat',
                descripsi:
                    'Saya ingin memberikan resep kue lapis legit yang lezat yang bisa Anda coba di rumah dengan bahan-bahan yang mudah didapatkan di pasar terdekat. Dengan citarasa yang kaya dan aroma rempah yang harum, kue lapis legit ini cocok disajikan sebagai cemilan atau sebagai hidangan penutup di acara keluarga.',
                bahan:
                    '300 gram mentega \n300 gram gula pasir \n1 sendok teh kayu manis bubuk \n1/2 sendok teh cengkeh bubuk \n12 butir telur, pisahkan putih dan kuningnya \n200 gram tepung terigu protein rendah, ayak \n1/2 sendok teh baking powder \n1/2 sendok teh vanili bubuk \n1 sendok makan emulsifier \nPewarna makanan sesuai selera',
                step: [
                  'Siapkan loyang persegi berukuran 20x20 cm, oles tipis dengan mentega dan taburi tepung terigu. Panaskan oven dengan suhu 180 derajat Celcius.',
                  'Dalam wadah, kocok mentega dan gula pasir hingga lembut dan mengembang. Tambahkan kayu manis bubuk dan cengkeh bubuk, aduk rata.',
                  'Tambahkan kuning telur satu per satu sambil terus dikocok hingga tercampur rata.',
                  'Campurkan tepung terigu, baking powder, dan vanili bubuk dalam wadah terpisah. Ayak campuran tepung dan masukkan ke dalam adonan mentega bergantian dengan putih telur yang telah dikocok kaku.',
                  'Setelah semua bahan tercampur rata, tambahkan emulsifier dan aduk rata.',
                  'Bagi adonan menjadi beberapa bagian, tergantung pada jumlah lapisan yang diinginkan. Tambahkan pewarna makanan pada setiap bagian adonan dan aduk hingga tercampur rata.',
                  'Tuang satu sendok sayur adonan ke dalam loyang dan ratakan dengan spatula. Panggang dalam oven selama 15-20 menit atau hingga lapisan atas kecoklatan.',
                  'Keluarkan loyang dari oven dan letakkan adonan berikutnya di atas lapisan yang sudah matang. Panggang lagi hingga lapisan atas kecoklatan. Lakukan hal yang sama untuk semua lapisan.',
                  'Setelah semua lapisan matang, keluarkan kue dari oven dan biarkan dingin selama beberapa menit. Lepas kue dari loyang dan potong-potong sesuai dengan selera.',
                  'Kue lapis legit siap disajikan sebagai hidangan penutup atau cemilan bersama keluarga dan teman-teman. Selamat mencoba!',
                ],
              ),
              CardPost(
                coverResep:
                    'https://images.unsplash.com/photo-1607755271353-d740f1c302f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGlyYW1pc3UlMjBjYWtlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                namauser: 'Jennifer',
                title: 'Cara Membuat Tiramisu',
                descripsi:
                    'Tiramisu merupakan salah satu dessert klasik Italia yang terkenal di seluruh dunia. Berikut ini adalah resep Tiramisu yang lezat dan mudah untuk dipraktikkan di rumah.',
                bahan:
                    '6 butir kuning telur \n3/4 cup gula pasir \n1 1/4 cup mascarpone cheese \n1 3/4 cup heavy cream \n1/2 cup kopi espresso \n1/2 cup marsala atau brandy \n24-30 ladyfingers \nKakao bubuk untuk taburan',
                step: [
                  'Siapkan baskom dan kocok kuning telur dan gula hingga mengental dan berwarna kuning pucat.',
                  'Tambahkan mascarpone cheese dan aduk rata.',
                  'Kocok heavy cream hingga mengembang dan kaku, lalu tambahkan ke dalam adonan mascarpone. Aduk perlahan hingga rata.',
                  'Siapkan loyang atau wadah persegi yang dalam dan lebar, lalu aduk kopi dan marsala/brandy.',
                  'Celupkan ladyfingers ke dalam campuran kopi dan letakkan pada dasar wadah hingga tertutupi dengan ladyfingers.',
                  'Ratakan lapisan adonan mascarpone di atas ladyfingers hingga merata.',
                  'Ulangi lapisan ladyfingers dan adonan mascarpone hingga habis. Akhiri dengan lapisan adonan mascarpone di atasnya.',
                  'Taburi kakao bubuk di atasnya dan simpan dalam kulkas selama minimal 3 jam atau semalaman sebelum disajikan.',
                ],
              ),
              CardPost(
                coverResep:
                    'https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmljZSUyMGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                namauser: 'Aldi Syahputra',
                title: 'Resep Membuat Nasi goreng seafood',
                descripsi:
                    'Nasi goreng seafood yang lezat ini merupakan kombinasi sempurna dari nasi goreng yang gurih dan seafood yang segar. Cocok untuk dimakan sebagai hidangan utama atau sebagai makanan ringan. Berikut adalah bahan-bahan dan langkah-langkah untuk membuatnya.',
                bahan:
                    '2 piring nasi putih \n100 gram udang kupas, cuci bersih \n100 gram cumi-cumi, potong kecil-kecil \n2 butir telur, kocok lepas \n3 siung bawang putih, cincang halus \n1 buah bawang bombay, cincang halus \n2 buah cabai merah, iris tipis \n2 sendok makan kecap manis \n1 sendok teh saus tiram \n1/2 sendok teh garam \n1/4 sendok teh merica bubuk \n2 sendok makan minyak goreng \nDaun bawang dan seledri secukupnya, iris halus',
                step: [
                  'Panaskan minyak goreng di dalam wajan. Tumis bawang putih dan bawang bombay hingga harum.',
                  'Masukkan udang dan cumi-cumi, tumis hingga matang.',
                  'Tambahkan cabai merah, kecap manis, saus tiram, garam, dan merica bubuk. Aduk rata.',
                  'Pindahkan udang, cumi-cumi, dan bumbu ke satu sisi wajan. Tuangkan telur kocok di sisi lain wajan. Aduk hingga telur setengah matang, lalu aduk rata dengan udang, cumi-cumi, dan bumbu.',
                  'Masukkan nasi putih ke dalam wajan, aduk rata dengan telur, udang, cumi-cumi, dan bumbu. Tambahkan daun bawang dan seledri, aduk rata.',
                  'Sajikan nasi goreng seafood di atas piring saji, taburi irisan daun bawang dan seledri di atasnya. Nikmati selagi masih hangat.',
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
