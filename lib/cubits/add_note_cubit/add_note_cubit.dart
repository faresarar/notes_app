import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      Box<dynamic> notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (error) {
      emit(AddNoteFailure(error.toString()));
    }
  }
}
