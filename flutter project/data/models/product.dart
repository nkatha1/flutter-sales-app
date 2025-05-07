class Product {
  final String id;
  final String name;
  final String sku;
  final double price;
  final int reorderLevel;

  Product({
    required this.id,
    required this.name,
    required this.sku,
    required this.price,
    required this.reorderLevel,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      sku: json['sku'],
      price: json['price'].toDouble(),
      reorderLevel: json['reorder_level'],
    );
  }
}
