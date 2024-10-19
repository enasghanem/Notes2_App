import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class NewNotes extends StatelessWidget {
  const NewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const CustomAppBar(
              text: 'Edit',
              icon: Icon(Icons.check),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFeild(text: 'Add Notes', maxline: 2, minline: 1),
            const SizedBox(
              height: 15,
            ),
            CustomTextFeild(text: 'Add Notes', maxline: 50, minline: 22),
          ],
        ),
      ),
    );
  }
}
