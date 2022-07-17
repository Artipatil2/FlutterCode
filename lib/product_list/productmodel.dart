class  Productmodel {
  String image;
  String name;
  String oprice;
  String  price;

  Productmodel(
      {required this.image,
      required this.name,
      required this.oprice,
      required this. price});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = image;
    data['name'] = name;
    data['rating'] =oprice;
    data['comment'] =  price;
    return data;
  }
}
