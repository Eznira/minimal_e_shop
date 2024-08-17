import 'package:flutter/material.dart';
import 'package:minimal_e_shop/models/shoe_data.dart';
import 'package:provider/provider.dart';

import '../models/shoe_model.dart';
import '../utils/shoe_tile.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoeData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Use constructor to "
                "improve performance.",
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Picks" + "",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Shoe currentShoe = value.show_list[index];
                  return ShowTile(
                    shoe: currentShoe,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
