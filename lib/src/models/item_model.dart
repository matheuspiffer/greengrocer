class ItemModel {
  String name;
  String image;
  String unit;
  double price;
  String description;

  ItemModel(
      {required this.description,
      required this.name,
      required this.image,
      required this.price,
      required this.unit});
}
