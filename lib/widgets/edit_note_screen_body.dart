import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'custom_text_form_field.dart';
import 'edit_note_colors_list.dart';

class EditNoteScreenBody extends StatefulWidget {
  const EditNoteScreenBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteScreenBody> createState() => _EditNoteScreenBodyState();
}

class _EditNoteScreenBodyState extends State<EditNoteScreenBody> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomTextFormField(
            hint: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: widget.noteModel.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 16),
          EditNoteColorsList(noteModel: widget.noteModel)
        ],
      ),
    );
  }
}
