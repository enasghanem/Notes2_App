import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/Add_Notest_State.dart';
import 'package:notes_app/Models/NotesModels.dart';
import 'package:notes_app/helpers/Constants.dart';

class AddNotesCubit extends Cubit<AddNotestState> {
  AddNotesCubit(super.initialState);
  addnotes(NotesModel notes) {
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box(knotes);
      emit(AddNotesSuccess());
      notesBox.add(notes);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
