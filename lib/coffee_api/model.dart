class Coffee {
  String? sId;
  int? id;
  String? name;
  String? description;
  double? price;
  String? region;
  int? weight;
  List<String>? flavorProfile;
  List<String>? grindOption;
  int? roastLevel;
  String? imageUrl;

  Coffee(
      {this.sId,
        this.id,
        this.name,
        this.description,
        this.price,
        this.region,
        this.weight,
        this.flavorProfile,
        this.grindOption,
        this.roastLevel,
        this.imageUrl});

  Coffee.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    region = json['region'];
    weight = json['weight'];
    flavorProfile = json['flavor_profile'].cast<String>();
    grindOption = json['grind_option'].cast<String>();
    roastLevel = json['roast_level'];
    imageUrl = json['image_url'];
  }


}