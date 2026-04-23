import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.isPassword,
    required this.keyboardType,
    required this.controller,
    required this.hint
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}
