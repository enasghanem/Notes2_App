import 'package:flutter/material.dart';
import 'package:notes_app/widgets/ADDButton.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: AddNotesForm(),
        ),
      ),
    );
  }
}

class AddNotesForm extends StatefulWidget {
  AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFeild(
            maxline: 2,
            minline: 1,
            text: 'Title',
            onSaved: (value) {
              title:
              value;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFeild(
            maxline: 6,
            minline: 5,
            text: 'Content',
            onSaved: (value) {
              subtitle:
              value;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          AddButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
