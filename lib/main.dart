import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_task/provider/screen_provider.dart';
import 'package:product_task/screen/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      home: Splash(),
    ),
  ));
}
