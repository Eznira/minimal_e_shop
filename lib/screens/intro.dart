import 'package:flutter/material.dart';
import 'package:minimal_e_shop/screens/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void ontap(BuildContext context) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/nike_logo.png',
              color: Colors.grey[800],
            ),
          ),
          const Spacer(),
          Text(
            "Just do it!",
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "packages have newer versions"
              " incompatible with dependency constraints.",
              style: TextStyle(color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () => ontap(context),
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800],
              ),
              child: const Center(
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
