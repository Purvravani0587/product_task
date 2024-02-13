import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/multi_rovider.dart';

class Products extends ConsumerWidget{
  int index;
  Products(this.index);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c=ref.watch(cart);
    // TODO: implement build
  return Scaffold();
  }

}
