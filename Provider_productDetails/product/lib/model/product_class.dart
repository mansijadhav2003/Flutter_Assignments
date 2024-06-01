class ProductModel {
  String image;
  String prouctname;
  String price;
  int quantity = 0;
  bool isfavourite = false;
  ProductModel({
    required this.image,
    required this.prouctname,
    required this.price,
    required this.quantity,
    required this.isfavourite,
  });
}
