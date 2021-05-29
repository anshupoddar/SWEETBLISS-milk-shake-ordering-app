import 'activity_modal.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  String quote;

  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.quote,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/p1.jpg',
    name: 'Ingridents',
    type: 'Oreo,Milk,NaturalFlavours& Essence',
    startTimes: ['15-20', 'minutes'],
    rating: 4,
    price: 250,
    quote: 'Oreo Magic',
  ),
  Activity(
    imageUrl: 'assets/images/s1.jpg',
    name: 'Ingridents',
    type: 'Strawberry punch,Milk,Wippedcream',
    startTimes: ['20-25', 'minutes'],
    rating: 4,
    price: 210,
    quote: 'Fruit Blast',
  ),
  Activity(
    imageUrl: 'assets/images/m1.jpg',
    name: 'Ingridents',
    type: 'Mango,Milk,Creamed ice',
    startTimes: ['12-20', 'minutes'],
    rating: 5,
    price: 200,
    quote: 'Mango Pop',
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/p1.jpg',
    city: '',
    country: '',
    description: 'Dive deep into the last of Oreo!',
    activities: activities,
    quote: 'Oreo Frost',
  ),
  Destination(
    imageUrl: 'assets/images/s1.jpg',
    city: '',
    country: '',
    description: 'Never Miss the fruity punch this summer!.',
    activities: activities,
    quote: 'Fruit Blast',
  ),
  Destination(
    imageUrl: 'assets/images/p3.jpg',
    city: '',
    country: '',
    description: 'Inhale and exhale the divine taste of Fererocher',
    activities: activities,
    quote: 'Fero Coco',
  ),
  Destination(
    imageUrl: 'assets/images/b1.jpg',
    city: '',
    country: '',
    description: 'Blue sky ,blue sea get the blue vibes! ',
    activities: activities,
    quote: 'Blue Lagoon',
  ),
  Destination(
    imageUrl: 'assets/images/m1.jpg',
    city: '',
    country: '',
    description: 'Every day is a Mangonificent!',
    activities: activities,
    quote: 'Mango pop',
  ),
];
