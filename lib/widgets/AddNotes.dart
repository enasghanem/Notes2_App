import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
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
              minline: 8,
              text: 'Content',
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}
