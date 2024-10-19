class AddNotestState {}

class AddNotesLoading extends AddNotestState {}

class AddNotesSuccess extends AddNotestState {}

class AddNotesFailure extends AddNotestState {
  final String errorMessage;
  AddNotesFailure(this.errorMessage);
}
