class Space {
  int id;
  String name;
  String city;
  String country;
  int price;
  String imageUrl;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int kitchen;
  int bedrooms;
  int cupboards;

  Space(
      {this.id,
      this.city,
      this.country,
      this.imageUrl,
      this.name,
      this.price,
      this.rating,
      this.address,
      this.mapUrl,
      this.phone,
      this.bedrooms,
      this.cupboards,
      this.kitchen,
      this.photos});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    bedrooms = json['number_of_bedrooms'];
    cupboards = json['number_of_cupboards'];
    kitchen = json['number_of_kitchens'];
  }
}
