import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  AddButton({super.key, required this.onTap, required this.isLoading});
  void Function()? onTap;
  final bool isLoading;
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
        child: Center(
          child: isLoading
              ?SizedBox(
                height: 30,
                width: 30,
                child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
              )
              :const Text(
                  'ADD',
                  // style: TextStyle(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
