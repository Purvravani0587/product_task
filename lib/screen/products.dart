import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_task/screen/config/data/datas.dart';

import '../provider/multi_rovider.dart';

class Products extends ConsumerWidget{
  int index;
  Products(this.index);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c=ref.watch(cart);
    // TODO: implement build
  return Scaffold(
    body: Column(children: [
      Expanded(child: Center(child: Image.asset(image[index]))),
      Center(child: Text("${l[index]}"),),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        IconButton(onPressed: () {
          c.removerCount();
        }, icon: Icon(Icons.minimize)),
        Text("${c.counter}",style: GoogleFonts.alata(fontSize: 25)),
        IconButton(onPressed: () {
          c.addCount();
        }, icon: Icon(Icons.add)),

      ],),
      ElevatedButton(onPressed: () {

      }, child: Text("Add to Cart"))
    ],),
  );
  }

}
