class Hotel {
  String imageUrl;
  String name;
  String address;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/o1.jpg',
    name: 'Buy1 N Get1',
    address: 'Order above 499',
  ),
  Hotel(
    imageUrl: 'assets/images/o2.jpg',
    name: 'Free Delivery',
    address: 'Code:LOVESHAKE',
  ),
  Hotel(
    imageUrl: 'assets/images/o3.jpg',
    name: '50% OFF',
    address: 'Orders above 599',
  ),
];
