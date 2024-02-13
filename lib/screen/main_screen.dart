import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_task/screen/config/data/datas.dart';
import 'package:product_task/screen/products.dart';

class Main_screen extends StatefulWidget {
  const Main_screen({super.key});

  @override
  State<Main_screen> createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Products", style: GoogleFonts.alata(fontSize: 25)),
      ),
      body: GridView.builder(
        itemCount: l.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Products(index),
                  ));
            },
            child: Column(
              children: [
                Expanded(child: Image.asset(image[index])),
                Text("${l[index]}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
