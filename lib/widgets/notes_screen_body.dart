import 'package:flutter/material.dart';

import 'notes_list_view.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: NotesListView()),
      ],
    );
  }
}
