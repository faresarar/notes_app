import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/edit_note_screen_body.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Edit Note",
        icon: Icons.check,
        onPressed: () {
          widget.noteModel.title = title ?? widget.noteModel.title;
          widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
          widget.noteModel.save();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        },
      ),
      body: EditNoteScreenBody(
        noteModel: widget.noteModel,
      ),
    );
  }
}
