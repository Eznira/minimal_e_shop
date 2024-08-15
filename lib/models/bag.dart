class Bag {
  final String name;
  final String description;
  final double rating;
  final int boughtInPastMonth;
  final double price;
  final double discount;
  final DateTime deliveryDate;
  final String deliveryLocation;

  Bag({
    required this.name,
    required this.description,
    required this.rating,
    required this.boughtInPastMonth,
    required this.price,
    required this.discount,
    required this.deliveryDate,
    required this.deliveryLocation,
  });

  final bag1 = Bag(
    name: "Stylish Leather Tote",
    description:
        "An elegant leather tote bag crafted from genuine leather. Perfect for everyday use, whether you're heading to work or a social event. Features multiple compartments for organization.",
    rating: 4.8,
    boughtInPastMonth: 50,
    price: 89.99,
    discount: 10,
    deliveryDate: DateTime(2024, 9, 2),
    deliveryLocation: "Nigeria",
  );

  final bag2 = Bag(
    name: "Canvas Messenger Bag",
    description:
        "A durable canvas messenger bag with an adjustable strap. Ideal for carrying your essentials while maintaining a casual yet stylish look. Suitable for work, school, or travel.",
    rating: 4.5,
    boughtInPastMonth: 30,
    price: 49.99,
    discount: 15,
    deliveryDate: DateTime(2024, 9, 2),
    deliveryLocation: "Nigeria",
  );

  // ... (similarly create more bag objects)

  final bag10 = Bag(
    name: "Weekend Travel Duffel",
    description:
        "A spacious duffel bag designed for weekend getaways. Made from sturdy materials, it can hold clothing, shoes, and other essentials. Features both handles and a shoulder strap for convenience.",
    rating: 4.7,
    boughtInPastMonth: 20,
    price: 69.99,
    discount: 20,
    deliveryDate: DateTime(2024, 9, 2),
    deliveryLocation: "Nigeria",
  );
}

final bag5 = Bag(
  name: "Convertible Crossbody Clutch",
  description:
      "Versatile crossbody bag that doubles as a chic clutch. Perfect for day-to-night transitions.",
  rating: 4.7,
  boughtInPastMonth: 28,
  price: 64.99,
  discount: 10,
  deliveryDate: DateTime(2024, 9, 2),
  deliveryLocation: "Nigeria",
);

// ... (similarly create more bag objects)

final bag14 = Bag(
  name: "Canvas Weekend Tote",
  description:
      "Spacious canvas tote for weekend adventures. Fits clothing, shoes, and essentials.",
  rating: 4.5,
  boughtInPastMonth: 18,
  price: 54.99,
  discount: 20,
  deliveryDate: DateTime(2024, 9, 2),
  deliveryLocation: "Nigeria",
);
