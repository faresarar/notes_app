import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import 'notes_list_view.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: NotesListView()),
      ],
    );
  }
}
