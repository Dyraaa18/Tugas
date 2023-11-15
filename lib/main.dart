import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godrej App',
      home: HomePage(),
    );
  }
}
Container buildProductBox(String productName) {
  return Container(
    width: 90,
    height: 120,
    color: Colors.grey[200],
    child: Center(
      child: Text(productName),
    ),
  );
}

Container buildProductBox0(String productName) {
  return Container(
    width: 370,
    height: 120,
    color: Colors.grey[200],
    child: Center(
      child: Text(productName),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Godrej'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle shop button press
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  // Ikon Godrej atau gambar profil Godrej
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyiaAMqWhxA_6_aJ3KvnUuSOia_vjh6GBZiw&usqp=CAU'),
                   // Ganti dengan warna yang sesuai atau gunakan gambar
                ),
                SizedBox(height: 16),
                Text(
                  'Godrej',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '4000 Pengikut',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle Mengikuti button press
                  },
                  child: Text('Mengikuti'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildProductBox0('Product 0'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Belanja berdasarkan kategori',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildProductBox('Product 1'),
              buildProductBox('Product 2'),
              buildProductBox('Product 3'),
              buildProductBox('Product 4'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Semua Produk',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(16.0),
  child: RichText(
    text: TextSpan(
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black, // Ganti dengan warna teks yang diinginkan
      ),
      children: [
        TextSpan(text: 'Promosi'),
        TextSpan(text: '        |   ', style: TextStyle(color: Colors.black)),
        TextSpan(text: 'Nama Produk'),
        TextSpan(text: '   |   ', style: TextStyle(color: Colors.black)),
        TextSpan(
          text: 'Terlaris',
          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
        ),
      ],
    ),
  ),
),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 4, // Number of products
              itemBuilder: (context, index) {
                // Your product boxes go here
                return Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text('Product $index'),
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
