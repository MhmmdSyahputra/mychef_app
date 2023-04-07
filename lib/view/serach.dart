import 'package:flutter/material.dart';
import 'main.menu.dart';

// ignore: use_key_in_widget_constructors
class SearchPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final List<String> images = [
    'https://images.unsplash.com/photo-1564671165093-20688ff1fffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=398&q=80',
    'https://media.istockphoto.com/id/157432931/id/foto/permen-kapas-merah-muda-ditahan-di-langit-biru-jernih.jpg?s=612x612&w=0&k=20&c=XutFKDwMCV7AuZV_quducouBCvkI8t4MLRWi9oGhAfk=',
    'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    'https://images.unsplash.com/photo-1622289211869-4bf123249abf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
    'https://images.unsplash.com/photo-1587652813868-6988baecfc90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
    'https://images.unsplash.com/photo-1592039017841-65201402f522?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1630315500315-43112e2bfd88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=773&q=80',
    'https://images.unsplash.com/photo-1512542466177-1347073b8104?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1562607635-4608ff48a859?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    'https://images.unsplash.com/photo-1601703857841-d04ddd0a6b07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://media.istockphoto.com/id/1399394208/id/foto/keluarga-asia-merayakan-idul-fitri-berdoa-sebelum-menikmati-makan-bersama-di-rumah.jpg?s=612x612&w=0&k=20&c=cWGyGA098ee94F9xP7gSiB8C9iRgduMvcN06hfms5F0=',
    'https://media.istockphoto.com/id/1125786249/id/foto/happy-african-american-woman-vlogger-penyiaran-memasak-video-langsung-di-rumah.jpg?s=612x612&w=0&k=20&c=S5TNzBj96LLlO__Y04xA0TdPDkrokLhz1jXOBJqzF74=',
    'https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1600618202813-ee7fca1fcc2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://media.istockphoto.com/id/1132541645/id/foto/pasangan-muda-makan-malam-bersama-di-pasar-malam.jpg?s=612x612&w=0&k=20&c=XlMd_2l-P6bySB1-4r6UELe5IGNqujqe25RwaDtWQZ4=',
    'https://images.unsplash.com/photo-1543157840-7f089c3afd69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1558138838-76294be30005?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1527786976732-c5d86c33bfb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80',
    'https://images.unsplash.com/photo-1616045206031-ad795693a439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80',
    'https://images.unsplash.com/photo-1628919350249-eb45d8829629?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1576330383200-2bf325cfec52?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(// ignore: avoid_unnecessary_containers
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          SizedBox(
            width: 500,
            child: TextField(
              controller: _searchController,
              style: const TextStyle(
                color: Colors.black,
                ),
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.search
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: EdgeInsets.symmetric(horizontal: 10)
              ),
              onChanged: (value) {
            // Perform search functionality here
              },
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
            shrinkWrap: true,
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        ],
      ),
    );
  }
}
