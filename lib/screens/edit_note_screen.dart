import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/edit_note_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Edit Note",
        icon: Icons.check,
      ),
      body: EditNoteScreenBody(),
    );
  }
}
