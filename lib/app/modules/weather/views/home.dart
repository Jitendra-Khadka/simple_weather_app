import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:weather_app/app/modules/weather/controllers/weather_controller.dart";
import "package:weather_app/app/modules/weather/widgets/search_textfield.dart";
import "package:weather_app/app/modules/weather/widgets/weather_info.dart";

class Home extends GetView<WeatherController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTextfield(
                controller: controller.searchController,
                func: controller.getWeather,
            ),
            SizedBox(height: 50),
            Container(
              height: 200,
              width: 200,
              child: Obx((){
                return Image.network(controller.weatherCondition.value.icon);
              }),
            ),

            Obx(() => WeatherInfo(
                location: controller.currentLocation.value,
                weather: controller.weatherCondition.value
            ))
          ]
        ),
      ),
    );
  }
}
