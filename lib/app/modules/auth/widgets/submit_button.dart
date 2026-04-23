import "package:flutter/material.dart";

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.func,
    required this.buttonName,
  });

  final String buttonName;
  final Future<void> Function() func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ()async{
          await func();
        },
        child: Text("Log in"),
    );
  }
}
