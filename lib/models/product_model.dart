class Product {
  final String image;
  final String name;
  final String oprice;
  final double price;

  const Product(
      {required this.image,
      required this.name,
      required this.oprice,
      required this.price});

  static const List<Product> products = [
    Product(
      image: 'assets/sofa.png',
      name: "Sofa",
      oprice: '\$79',
      price: 505,
    ),
    Product(
      image: 'assets/Armchair.png',
      name: "Armchair",
      oprice: '\$79',
      price: 220,
    ),
    Product(
      image: 'assets/Bed.png',
      name: "Bed",
      oprice: '\$79',
      price: 760,
    ),
    Product(
      image: 'assets/Chair1.png',
      name: "Chair",
      oprice: '\$79',
      price: 45,
    ),
    Product(
      image: 'assets/sofa.png',
      name: "Sofa",
      oprice: '\$79',
      price: 505,
    ),
    Product(
      image: 'assets/Armchair.png',
      name: "Armchair",
      oprice: '\$79',
      price: 220,
    ),
    Product(
      image: 'assets/Bed.png',
      name: "Bed",
      oprice: '\$79',
      price: 760,
    ),
    Product(
      image: 'assets/Chair1.png',
      name: "Chair",
      oprice: '\$79',
      price: 45,
    )
  ];
}
