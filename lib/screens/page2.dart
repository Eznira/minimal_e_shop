import 'package:flutter/material.dart';
import 'package:minimal_e_shop/models/shoe_data.dart';
import 'package:minimal_e_shop/utils/shoe_tile.dart';
import 'package:provider/provider.dart';

import '../models/shoe_model.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void removeShoe(Shoe shoe) {
    context.read<ShoeData>().removeShoeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoeData>(
      builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.grey[300],
          body: Column(
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: value.cart_list.isEmpty
                    ? Center(
                        child: Text("Empyt Cart!"),
                      )
                    : ListView.builder(
                        itemCount: value.cart_list.length,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.cart_list[index];
                          return ShoeTile(
                            shoe: shoe,
                            onPressed: () => removeShoe(shoe),
                          );
                        },
                      ),
              )
            ],
          )),
    );
  }
}
