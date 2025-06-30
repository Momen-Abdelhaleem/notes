import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'text',
        hintStyle: TextStyle(color: kPrimaryColor),
        border: OutlineInputBorder(),
      ),
    );
  }
}
