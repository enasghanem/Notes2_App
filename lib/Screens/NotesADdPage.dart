import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class NewNotes extends StatelessWidget {
  const NewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomTextFeild(text: 'Add Notes', maxline: 2, minline: 1),
          SizedBox(
            height: 15,
          ),
          CustomTextFeild(text: 'Add Notes', maxline: 10, minline: 6),
        ],
      ),
    );
  }
}
