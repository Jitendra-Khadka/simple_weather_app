class WeatherModel{
  WeatherModel({
    required this.condition,
    required this.icon,
    required this.temp,
  });
  final String condition;
  final String icon;
  final num temp;

  factory WeatherModel.fromJson(Map<String,dynamic> data){
    String rawIcon = data["condition"]["icon"];
    String cleanIcon = rawIcon.startsWith("//")? "https:$rawIcon": rawIcon;
    return WeatherModel(
        condition: data["condition"]["text"],
        icon: cleanIcon,
        temp: data["temp_c"]
    );
  }

}