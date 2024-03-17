class RestaurantModel {
  int? restaurantId;
  String? name;
  String? address;
  String? phone;
  String? openingTime;
  String? closingTime;
  String? availableServices;
  String? cuisineType;
  Null tables;

  RestaurantModel(
      {this.restaurantId,
        this.name,
        this.address,
        this.phone,
        this.openingTime,
        this.closingTime,
        this.availableServices,
        this.cuisineType,
        this.tables});

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    openingTime = json['openingTime'];
    closingTime = json['closingTime'];
    availableServices = json['availableServices'];
    cuisineType = json['cuisineType'];
    tables = json['tables'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['restaurantId'] = restaurantId;
    data['name'] = name;
    data['address'] = address;
    data['phone'] = phone;
    data['openingTime'] = openingTime;
    data['closingTime'] = closingTime;
    data['availableServices'] = availableServices;
    data['cuisineType'] = cuisineType;
    data['tables'] = tables;
    return data;
  }
}