// import 'package:e_commerce/email_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

// import 'store_app/main_screen.dart';
import 'store_app/storetabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        fontFamily: 'Kumbh Sans'),
      home: const StoreAppTab(),
    );
  }
}
