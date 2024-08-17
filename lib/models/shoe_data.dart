import 'package:flutter/cupertino.dart';

import 'shoe_model.dart';

class ShoeData extends ChangeNotifier {
  late final shoe_list = [shoe1, shoe2, shoe3, shoe4];

  final cart_list = [];

  void addShoeToCart(Shoe shoe) {
    if (!cart_list.contains(shoe)) {
      cart_list.add(shoe);
      notifyListeners();
    } else
      throw AlreadyInCart("This item already exist in cart!");
  }

  void removeShoeFromCart(Shoe shoe) {
    cart_list.remove(shoe);
    notifyListeners();
  }

  final shoe1 = Shoe(
    name: "Classic Sneakers",
    description:
        "Timeless leather sneakers with a comfortable fit. Perfect for casual wear, offering a blend of style and durability.",
    rating: 4.7,
    boughtInPastMonth: 75,
    price: 79.99, discount: 5,
    deliveryDate: DateTime(2024, 9, 5),
    deliveryLocation: "Lagos, Nigeria",
    imagePath: "assets/images/shoe_1.jpg", // Example image path
  );

  final shoe2 = Shoe(
    name: "Running Shoes",
    description:
        "Lightweight and breathable running shoes designed for performance. Features cushioning and support for a comfortable run.",
    rating: 4.6,
    boughtInPastMonth: 60,
    price: 99.99,
    discount: 10,
    deliveryDate: DateTime(2024, 9, 5),
    deliveryLocation: "Abuja, Nigeria",
    imagePath: "assets/images/shoe_2.jpg", // Example image path
  );

// ... (similarly create more shoe objects)

  final shoe3 = Shoe(
    name: "Hiking Boots",
    description:
        "Durable hiking boots with ankle support and a rugged outsole. Ideal for outdoor adventures and challenging terrains.",
    rating: 4.8,
    boughtInPastMonth: 40,
    price: 129.99,
    discount: 15,
    deliveryDate: DateTime(2024, 9, 5),
    deliveryLocation: "Port Harcourt, Nigeria",
    imagePath: "assets/images/shoe_3.jpg", // Example image path
  );

  final shoe4 = Shoe(
    name: "Stylish Sandals",
    description:
        "Comfortable and fashionable sandals perfect for warm weather. Available in various colors and designs.",
    rating: 4.5,
    boughtInPastMonth: 80,
    price: 49.99,
    discount: 5,
    deliveryDate: DateTime(2024, 9, 5),
    deliveryLocation: "Kano, Nigeria",
    imagePath: "assets/images/shoe_4.jpg", // Example image path
  );
}

class AlreadyInCart implements Exception {
  final String message;

  AlreadyInCart(this.message);

  @override
  String toString() {
    return "AlreadyInCart: $message";
  }
}
