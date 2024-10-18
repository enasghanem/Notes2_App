import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild(
      {super.key,
      required this.text,
      required this.maxline,
      required this.minline});
  final String text;
  int maxline = 1;
  int minline = 1;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      minLines: minline,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(),
      ),
    );
  }
}
