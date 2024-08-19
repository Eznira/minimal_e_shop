import 'package:flutter/material.dart';
import 'package:minimal_e_shop/screens/home.dart';
import 'package:minimal_e_shop/screens/intro.dart';
import 'package:provider/provider.dart';

import 'models/shoe_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => ShoeData(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: IntroPage(),
      routes: {
        "/home": (context) => MyHomePage(),
        "/shop": (context) => MyHomePage(),
        "/cart": (context) => MyHomePage(
              index: 1
            ),
      },
    );
  }
}
