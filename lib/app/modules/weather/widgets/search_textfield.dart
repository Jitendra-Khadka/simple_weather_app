import "package:flutter/material.dart";

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
    required this.controller,
    required this.func
  });
  final TextEditingController controller;
  final Future<void> Function(String) func;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Enter city name",
        suffix: InkWell(
          onTap: ()=>func("Kathmandu"),
          child: Icon(Icons.search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
      ),
    );
  }
}
