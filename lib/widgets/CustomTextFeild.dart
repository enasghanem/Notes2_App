import 'package:flutter/material.dart';
import 'package:notes_app/helpers/Constants.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    super.key,
    required this.text,
    required this.maxline,
    required this.minline,
    this.onSaved,
  });
  final String text;
  int maxline = 1;
  int minline = 1;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Feild is required';
        } else {
          return null;
        }
      },
      maxLines: maxline,
      minLines: minline,
      decoration: InputDecoration(
        hintText: text,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: kcolor,
        )),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
