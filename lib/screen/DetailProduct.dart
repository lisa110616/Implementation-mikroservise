import 'package:flutter/material.dart';
import 'package:microservice_product/model/model_product.dart';

class DetailProduct extends StatelessWidget {
  final Datum product;

  const DetailProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E3B4E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Detail Produk"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Menambahkan padding di seluruh body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Agar teks rata kiri
            children: [
              // Ganti dengan gambar produk yang sesuai
              Image.asset(
                'lib/assets/laptop.jpg',
                width: double.infinity, // Gambar mengisi lebar layar
                height: 200,
                fit: BoxFit
                    .cover, // Memastikan gambar terpotong dengan proporsional
              ),
              const SizedBox(height: 20),
              // Menampilkan nama produk
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors
                      .black, // Menambahkan warna putih agar terlihat jelas di background gelap
                ),
              ),
              const SizedBox(height: 10),
              // Menampilkan harga produk
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan deskripsi produk
              Text(
                product.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors
                      .black, // Warna putih transparan agar kontras dengan background
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: double
                      .infinity, // Makes the button take up the full width of the parent
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF2E3B4E)), // Set background color
                      foregroundColor: MaterialStateProperty.all(
                          Colors.white), // Set text color
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Border radius applied here
                        ),
                      ),
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan Review
              const Text(
                'Review:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:
                      Colors.black, // Menambahkan warna putih untuk teks judul
                ),
              ),
              const SizedBox(height: 10),
              // Komentar produk (perbaiki akses komentar)
              // Text(
              //   'Komentar: ${product.review.comment}', // Menampilkan komentar produk
              //   style: const TextStyle(
              //     fontSize: 16,
              //     color: Colors.white70,  // Warna putih transparan agar kontras dengan background
              //   ),
              // ),
              // const SizedBox(height: 10),
              // // Rating produk
              // Text(
              //   'Rating: ${product.review.ratings}',
              //   style: const TextStyle(
              //     fontSize: 16,
              //     color: Colors.yellow,  // Memberikan warna kuning pada rating untuk menonjol
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
