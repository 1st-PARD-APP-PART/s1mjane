class Item {
  final int id;
  final String imgUrl;
  final String name;
  final String location;
  final String price;
  final bool isBooked;
  final bool isSold;

  Item({
    required this.id,
    required this.imgUrl,
    required this.name,
    required this.location,
    required this.price,
    required this.isBooked,
    required this.isSold,
  });
}