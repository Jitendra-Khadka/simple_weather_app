class LocationModel{
  LocationModel({
    required this.name,
    required this.country,
  });
  final String name;
  final String country;

  factory LocationModel.fromJson(Map<String,dynamic> data){
    return LocationModel(
        name: data["name"],
        country: data["country"]
    );
  }

}