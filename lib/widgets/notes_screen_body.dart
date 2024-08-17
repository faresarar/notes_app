import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomNoteItem(),
      ],
    );
  }
}
