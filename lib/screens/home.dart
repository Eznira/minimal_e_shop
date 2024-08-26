import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minimal_e_shop/screens/page1.dart';
import 'package:minimal_e_shop/screens/page2.dart';
import 'package:minimal_e_shop/utils/custom_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, this.index = 0});

  final int index;

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

  void goToHome() {
    Navigator.pushNamed(context, '/home');
  }

  void goToCart() {
    Navigator.pushNamed(context, '/cart');
  }

  void exitApp() {
    SystemNavigator.pop();
  }

  @override
  void initState() {
    super.initState();
    navigatePage(widget.index);
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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Builder(builder: (context) {
                  return ListTile(
                      onTap: goToHome,
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ));
                })),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Builder(builder: (context) {
                return ListTile(
                  onTap: goToCart,
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  title: Text('Cart', style: TextStyle(color: Colors.white)),
                );
              }),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ListTile(
                onTap: exitApp,
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
