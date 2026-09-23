class Product {
  final String name;
  final String weight;
  final double price;

  //named parameter constructor to make the code clearer
  const Product({
    required this.name,
    required this.weight,
    required this.price,
  });
}
