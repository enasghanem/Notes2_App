import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/Add_Notest_State.dart';
import 'package:notes_app/Models/NotesModels.dart';
import 'package:notes_app/helpers/Constants.dart';

//*********************** */
class AddNotesCubit extends Cubit<AddNotestState> {
  AddNotesCubit() : super(AddNotesIn());
  void addnotes(NotesModel notes) {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box(knotes);
      notesBox.add(notes);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
//notes the code run without determine "NodesModel"
//var notesBox = Hive.box<NotesModel>(knotes);