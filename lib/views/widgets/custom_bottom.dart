import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child:
              isLoading
                  ? CircularProgressIndicator(color: Colors.black)
                  : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
        ),
      ),
    );
  }
}
