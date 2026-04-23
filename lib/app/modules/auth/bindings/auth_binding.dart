import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/app/data/providers/local_data_storage.dart';
import 'package:weather_app/app/data/repository/auth_repository.dart';
import 'package:weather_app/app/modules/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    final pref = Get.find<SharedPreferences>();

    Get.put(
      AuthController(
        AuthRepository(
          LocalDataStorage(pref)
        )
      )
    );
  }
}