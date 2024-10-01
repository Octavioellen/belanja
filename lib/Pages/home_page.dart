import 'package:belanja/Widgets/footer.dart';
import 'package:belanja/Widgets/hero.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: "Sugar", price: "RP 5000", gambar: '../asset/image/gambar gula.jpg', stok: '25' , rating: '5', deskripsi: 'Berasal dari bahan alami tanpa pemanis buatan '),
    Item(name: "Salt", price: "RP 2000", gambar: '../asset/image/gambar garam.jpeg', stok: '20', rating: '5', deskripsi: 'Garam berkualitas aman untuk orang dewasa dan anak-anak'),
    // Tambahkan item lain sesuai kebutuhan
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Belanja"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            HeroSection(),
            Expanded(

        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
               Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
            ),

            FooterSection()

          ],
        )
      ),
    );
  }
}