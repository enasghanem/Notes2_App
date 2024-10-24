import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/AddNotesCubit.dart';
import 'package:notes_app/Cubits/Add_Notest_State.dart';
import 'package:notes_app/Models/NotesModels.dart';
import 'package:notes_app/widgets/ADDButton.dart';
import 'package:notes_app/widgets/CustomTextFeild.dart';

class AddNotesForm extends StatefulWidget {
  AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  String? title;
  String? subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
              title = value;
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
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          BlocBuilder<AddNotesCubit, AddNotestState>(
            builder: (context, state) {
              return AddButton(
                onTap: () {
                  //question
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();

                    var notesModel = NotesModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.green.value);
                    print(notesModel);
                    // بحث عن الـ Cubit الذي تم توفيره

                    BlocProvider.of<AddNotesCubit>(context)
                        .addnotes(notesModel);
                    /************************** */
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                isLoading: true,
              );
            },
          )
        ],
      ),
    );
  }
}
