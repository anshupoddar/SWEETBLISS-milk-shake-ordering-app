import 'package:flutter/material.dart';

import 'flutter_cart.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel(
        "Trio Thunder",
        "Milkshake",
        "https://th.bing.com/th/id/OIP.fhiXwWKOWC5p_mqLaDmgNQHaE8?w=249&h=180&c=7&o=5&pid=1.7",
        200),
    ProductModel(
      "Strawberry Queen",
      "Milkshake",
      "https://th.bing.com/th/id/OIP.MP8D64hAD4nXRV5teNnNVwHaEo?w=274&h=180&c=7&o=5&pid=1.7",
      215,
      width: 150.0,
      height: 100.0,
    ),
    ProductModel("Fruit Blast", "Milkshake",
        "https://images5.alphacoders.com/653/653439.jpg", 230),
    ProductModel(
        "Blue Lagoon",
        "Milkshake",
        "https://th.bing.com/th/id/OIP.QAjZ1A4IiPhYiHO0cPPCDQHaE8?w=260&h=180&c=7&o=5&pid=1.7",
        250),
    ProductModel(
        "Mango Punch",
        "Milkshake",
        "https://th.bing.com/th/id/OIP.j7nJks-NKaxsBeRWD8p9qQHaEK?w=298&h=180&c=7&o=5&pid=1.7",
        200),
    ProductModel(
        "Whipped Cream",
        "Topping",
        "https://yesofcorsa.com/wp-content/uploads/2019/07/Whipped-Cream-Wallpaper-High-Definition.jpg",
        25),
    ProductModel("Sugar Cubes", "Topping",
        "https://i.ytimg.com/vi/6BwxMQDUzP4/hqdefault.jpg", 20),
    ProductModel(
        "Ice-Cream",
        "Topping",
        "https://1.bp.blogspot.com/-kSTs0_so__Y/WFlVI3nCHNI/AAAAAAAACZA/gVdFfitveIUsZSk9Z6a_8CUcgsrggCG4QCLcB/s1600/Amul%2BIce%2BCream%2BImages%2BWallpapers.jpg",
        50),
    ProductModel(
        "Doughnuts",
        "Topping",
        "https://th.bing.com/th/id/Rd932ba5e49010a4e0a64b286e143647f?rik=U2lQl42rio9fXA&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f09%2fDonuts-High-Definition-Wallpapers.jpg&ehk=L1QrHS6Elg%2bu2KpaMprRHgpAj1iUwclgFvbmvHjhpRE%3d&risl=&pid=ImgRaw",
        50),
    ProductModel(
        "Nuts",
        "Topping",
        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/the-health-benefits-of-nuts-main-image-700-350-bb95ac2.jpg?quality=90&resize=768,574",
        70),
    ProductModel(
        "Blueberry & Raspberry",
        "Topping",
        "https://images.unsplash.com/photo-1466065478348-0b967011f8e0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=744&q=80",
        70),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(products[index].name),
              tileColor: Color(0xFFe57373),
              leading: Image.network(products[index].imgurl),
              subtitle: Text(products[index].topings),
              trailing: Text(
                "\₹ ${products[index].price}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                _valueSetter(products[index]);
              });
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: products.length);
  }
}
