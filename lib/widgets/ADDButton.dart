import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  AddButton({super.key, required this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.teal,
        ),
        height: 50,
        width: double.infinity,
        child: const Center(
          child: Text(
            'ADD',
            // style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
