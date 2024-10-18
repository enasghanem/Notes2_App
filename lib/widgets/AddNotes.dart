import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextFeild(
            maxline: 2,
            minline: 1,
            text: 'Title',
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFeild(
            maxline: 15,
            minline: 10,
            text: 'Content',
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 20,
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
          )
        ],
      ),
    );
  }
}
