import 'package:flutter/material.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        centerTitle: true,
      ),
      body: const NotesScreenBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            builder: (context){
              return const AddNoteBottomSheet() ;
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

