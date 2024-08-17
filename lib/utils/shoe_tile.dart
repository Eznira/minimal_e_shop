import 'package:flutter/material.dart';

import '../models/shoe_model.dart';

class ShoeTile extends StatelessWidget {
  ShoeTile({super.key, required this.shoe, required this.onPressed});
  Shoe shoe;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text(shoe.price.toString()),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
