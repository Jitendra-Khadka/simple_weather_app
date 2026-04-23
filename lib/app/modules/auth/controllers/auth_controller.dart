import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:weather_app/app/data/repository/auth_repository.dart';
import 'package:weather_app/app/routes/app_pages.dart';
import 'package:weather_app/app/routes/app_routes.dart';

class AuthController extends GetxController{
  final AuthRepository repo;
  AuthController(this.repo);

  var isLoggedIn = false.obs;
  final emailController =TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit(){
    isLoggedIn.value = repo.isLoggedIn();
    super.onInit();
  }

  Future<void> login()async{
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    await repo.login(email, password);
    isLoggedIn.value = true;
    // need to add navigation here
    Get.offAllNamed(Routes.Home);
  }

  Future<void> logout()async{
    await repo.logout();
    isLoggedIn.value = false;
    // need to add navigation here
    Get.offAllNamed(Routes.Login);
  }

  @override void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

}