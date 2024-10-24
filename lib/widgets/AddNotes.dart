import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Cubits/AddNotesCubit.dart';
import 'package:notes_app/Cubits/Add_Notest_State.dart';

import 'package:notes_app/widgets/Formwidget.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});
  // bool IsLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocConsumer<AddNotesCubit, AddNotestState>(
          listener: (context, Object? state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNotesForm(),
            );
          },
        ),
      ),
    );
  }
}
