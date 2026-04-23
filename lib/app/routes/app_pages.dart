import 'package:get/get.dart';
import 'package:weather_app/app/modules/auth/bindings/auth_binding.dart';
import 'package:weather_app/app/modules/auth/views/login_page.dart';
import 'package:weather_app/app/modules/weather/bindings/weather_binding.dart';
import 'package:weather_app/app/modules/weather/views/home.dart';
import 'package:weather_app/app/routes/app_routes.dart';

class AppPages{
  static const inital = Routes.Login;

  static final routes = [
    GetPage(
        name: Routes.Home,
        page: ()=>Home(),
        binding: WeatherBinding(),
    ),

    GetPage(
      name: Routes.Login,
      page: ()=>LoginPage(),
      binding: AuthBinding(),
    ),
  ];
}