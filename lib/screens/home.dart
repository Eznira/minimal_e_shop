import 'package:flutter/material.dart';
import 'package:minimal_e_shop/screens/page1.dart';
import 'package:minimal_e_shop/screens/page2.dart';
import 'package:minimal_e_shop/utils/custom_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> _pages = [Page1(), Page2()];

  void navigatePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: CustomNavBar(onTabChange: navigatePage),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              'assets/images/nike_logo.png',
              color: Colors.white,
            )),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ))),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ListTile(
                leading: Icon(
                  Icons.card_travel,
                  color: Colors.white,
                ),
                title: Text('Cart', style: TextStyle(color: Colors.white)),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                title: Text('Exit', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
