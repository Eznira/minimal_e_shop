class Shoe {
  final String name;
  final String description;
  final double rating;
  final int boughtInPastMonth;
  final double price;
  final double discount;
  final DateTime deliveryDate;
  final String deliveryLocation;
  final String imagePath; // Added image path field

  Shoe({
    required this.name,
    required this.description,
    required this.rating,
    required this.boughtInPastMonth,
    required this.price,
    required this.discount,
    required this.deliveryDate,
    required this.deliveryLocation,
    required this.imagePath,
  });
}
