import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:weather_app/app/modules/auth/controllers/auth_controller.dart";
import "package:weather_app/app/modules/auth/widgets/custom_text_field.dart";
import "package:weather_app/app/modules/auth/widgets/submit_button.dart";

class LoginPage extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(
                  isPassword: false,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.emailController,
                  hint: "Email"
              ),
          
              CustomTextField(
                  isPassword: true,
                  keyboardType: TextInputType.text,
                  controller: controller.passwordController,
                  hint: "Password"
              ),

              SubmitButton(
                  func: controller.login,
                  buttonName: "Log in"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
