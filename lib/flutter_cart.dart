class ProductModel {
  String name;
  String topings;
  String imgurl;
  int price;

  ProductModel(String name, String topings, String imgurl, int price,
      {double height, double width}) {
    this.name = name;
    this.price = price;
    this.topings = topings;
    this.imgurl = imgurl;
  }
}
