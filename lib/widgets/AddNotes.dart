import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/AddNotesCubit.dart';
import 'package:notes_app/Cubits/Add_Notest_State.dart';
import 'package:notes_app/widgets/Formwidget.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});
  // bool IsLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddNotesCubit>(
      create: (context) {
        return AddNotesCubit();
      },
      child: BlocConsumer<AddNotesCubit, AddNotestState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('failed ${state.errorMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: AddNotesForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
